import requests
from bs4 import BeautifulSoup

url = 'https://public.tableau.com/app/discover/business-dashboards'

# Send an HTTP request to the website
response = requests.get(url)

# Check if the request was successful (status code 200)
if response.status_code == 200:
    # Parse the HTML content using BeautifulSoup
    soup = BeautifulSoup(response.text, 'html.parser')

    # Get the entire HTML content
    html_content = soup.prettify()

    # Print or use the HTML content as needed
    print(html_content)

else:
    print(f"Failed to retrieve the page. Status code: {response.status_code}")