#!/usr/bin/env python

import lxml

import jmm.browsers as browsers
import jmm.soups as soups


br = browsers.SeleniumHelper.Browser.Firefox
navig = br.new_browser()
# navig = jmm.browsers.SeleniumHelper.Browser.new_browser_for("chrome")

base_url = "https://www.just-eat.ch"

urls = {
  # using iterator because we only ever need to access/fetch each url once,
  # and always access them in sequence
  "restos": iter(["https://www.just-eat.ch/fr/livraison/repas/lausanne-1003"]),
}

def f_replace_with_soup_text(arr):
  try:
    return [val.get_text() if val else val for val in arr]
  except:
    val = arr
    try:
      return val.get_text() if val else val
    except AttributeError as err:
      return str(val)

def soft_text(tag, default=None):
  try:
    return tag.get_text().strip()
  except:
    return default

def try_int(s):
  try:
    return int(s)
  except:
    return None

def try_float(s):
  try:
    return float(s)
  except:
    return None

e_restaurant_blocks = lambda soup: soup.find_all("li", class_="_2ro375")
def parse_restaurant_li(soup):
  title = soup.find("h3", class_="_63-j _3F6Pu")
  cuisines = soup.find_all("span", attrs={"data-qa": "cuisine"})
  # schedule = soup.find("div", class_="_2LV0z JvtN2 Rfk_i")
  schedule = soup.find("div", class_=["_2LV0z", "JvtN2", "Rfk_i"])
  
  link_tag = soup.find("a", class_="_1p4Qx")
  path = link_tag["href"]
  url = base_url + path
  
  data = {
    "title": f_replace_with_soup_text(title),
    "cuisines": f_replace_with_soup_text(cuisines),
    "url": f_replace_with_soup_text(url),
    "path": path,
  }
  
  return data


def persist_shmutz(data_row):
  # TODO : ceci à faire
  pass

def extract_dishes(page_soup):
  dish_soups = page_soup.find_all("div", class_="_2uYQC-")
  
  for dish_tag in dish_soups:
    name = soft_text(dish_tag.find("h3", class_="_63-j _1rimQ"))
    description = soft_text(dish_tag.find("h3", class_="_2LV0z Rfk_i"))
    price = soft_text(dish_tag.find("h3", class_="_2PRj3E"), "")
    price = try_float(price.split(" ")[0])
    
    ingredients_short = soft_text(dish_tag.find("i", class_="_3ilF9 Rfk_i"))
    i1 = ingredients_short.rfind("Choix de: ")
    i1 = 10 if i1 >= 0 else 0
    i2 = ingredients_short.rfind(" et plus.")
    ingredients_short = ingredients_short[i1:i2]  # common
    ingredients_list_short = ingredients_short.split(", ")
    
    # "data-qa": "item-choices-options-single-select-option"
    # ingredients_type1 = "_3gQFM"
    
    data = {
      "name": name,
      "description": description,
      "price": price,
      "ingredients_short": ingredients_list_short,
    }
  
  return data, dish_soups

def fetch_restaurants_at(url):
  for search_url in urls:
    navig.get(next(urls["restos"]))
    # html = navig.page_source
    # in order to get page data
    soup = soups.soupifyContent(navig.page_source)
    
    restos_soups = e_restaurant_blocks(soup)
    restos_datas = [parse_restaurant_li(sp) for sp in restos_soups]
    
    for resto_url in map(lambda x: x.get("url"), restos_datas):
      # click
      if resto_url:
        # TODO : navigate each resto page and do schmutz
        pass
  pass



