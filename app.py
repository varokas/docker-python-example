import requests

r = requests.get('https://api.covidtracking.com/v1/us/current.json')
j = r.json()

today_res = j[0]
print(f"Total Tests on {today_res['date']}: {today_res['totalTestResults']}")
