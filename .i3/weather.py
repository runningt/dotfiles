#!/usr/bin/env python
import os
import sys
import pyowm


def get_weather_icon(name):
    '''
    See: https://openweathermap.org/weather-conditions
    '''
    ICONS = {
    '01d':'☀',
    '01n':'🌕',
    '02d':'⛅',
    '02n':'⛅',
    '03d':'☁',
    '03n':'☁',
    '04d':'☁',
    '04n':'☁',
    '09d':'🌦',
    '09n':'🌦',
    '10d':'🌦',
    '10n':'🌦',
    '11d':'⛈',
    '11n':'⛈',
    '13d':'🌨',
    '13n':'🌨',
    '50d':'🌫',
    '50n':'🌫',
    }
    return ICONS.get(name.lower(),'?')



#use your api key here or set is as env variable $OWM_API_KEY
api_key = os.environ.get('OWM_API_KEY',None)
location = sys.argv[1] if len(sys.argv) > 1 else 'Krakow,PL'
owm = pyowm.OWM(api_key)
weather = owm.weather_at_place(location).get_weather()
temp = int(weather.get_temperature('celsius').get('temp',0))
name = weather.get_weather_icon_name()
status = weather.get_status()
icon = get_weather_icon(name)

print(f'{location} {icon} {temp}°C')
print(f'{location} {icon} {temp}°C')
if temp > 30:
    print('#FF0000')
elif temp > 25:
    print('#FFFC00')
elif temp > 10:
    print('#00FF00')
elif temp > -10:
    print('#0000FF')
else:
    print('#AA00CF')
