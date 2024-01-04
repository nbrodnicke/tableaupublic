from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.chrome.service import Service
import time

driver = webdriver.Chrome()

# URL of the page to scrape
url = 'https://public.tableau.com/app/discover/business-dashboards'

driver.get(url)
time.sleep(5)  # Adjust the sleep time if necessary

# Find elements - adjust the selectors based on actual page structure
dashboard_elements = driver.find_elements(By.CSS_SELECTOR, 'a.link')

with open('html2.html', 'w') as file_out:
    file_out.write(driver.page_source)

dashboards = []
for element in dashboard_elements:
    title = element.text
    link = element.get_attribute('href')
    dashboards.append({'title': title, 'link': link})

driver.quit()

for dashboard in dashboards:
    print(f"Title: {dashboard['title']}, Link: {dashboard['link']}")