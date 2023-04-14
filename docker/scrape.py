import requests
import csv

def scrape(endpoint):
    response = requests.get(endpoint)
    data = response.json()
    rows = []
    for item in data:
        row = []
        for key in item.keys():
            row.append(item[key])
        rows.append(row)
    return rows

if __name__ == '__main__':
    if sys.argv[1] == 'customers':
        endpoint = 'http://example.com/customers'
    elif sys.argv[1] == 'orders':
        endpoint = 'http://example.com/orders'
    else:
        print('Invalid argument.')
        sys.exit(1)
    data = scrape(endpoint)
    with open(sys.argv[1] + '.csv', 'w', newline='') as file:
        writer = csv.writer(file)
        writer.writerows(data)
