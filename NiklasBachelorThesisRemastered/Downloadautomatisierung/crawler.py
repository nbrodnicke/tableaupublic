from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

# Replace with the URL of the website you want
url = "https://public.tableau.com/app/discover/business-dashboards"

# Adding the option for headless browser
options = webdriver.ChromeOptions()
options.add_argument("headless")
driver = webdriver.Chrome(options=options)

# Create a new instance of the Chrome webdriver
driver = webdriver.Chrome()

driver.get(url)

# Wait for the additional HTML elements to load
wait = WebDriverWait(driver, 10)
wait.until(EC.presence_of_all_elements_located((By.XPATH, "//*[contains(@class, 'lazy-load')]")))

# Get  HTML 
html = driver.page_source

print(html)

driver.close()