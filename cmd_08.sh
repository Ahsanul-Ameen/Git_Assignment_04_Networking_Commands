#!/bin/bash

# Define the URL and headers
url='https://isitchristmas.com/'
headers=(
  'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7'
  'Accept-Language: en-US,en;q=0.9,bn;q=0.8'
  'Cache-Control: max-age=0'
  'Connection: keep-alive'
  'Cookie: _ga=GA1.2.1479924876.1697996963; _gid=GA1.2.1945603903.1697996963; _ga_PENSJVNMF8=GS1.2.1697996964.1.0.1697996964.0.0.0'
  'DNT: 1'
  'If-None-Match: W/"b4c8-UDvcZmxCXXH3Gw7kl6s2uRQC+sw"'
  'Referer: https://www.google.com/'
  'Sec-Fetch-Dest: empty'
  'Sec-Fetch-Mode: navigate'
  'Sec-Fetch-Site: cross-site'
  'Upgrade-Insecure-Requests: 1'
  'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/118.0.0.0 Safari/537.36'
  'sec-ch-ua: "Chromium";v="118", "Google Chrome";v="118", "Not=A?Brand";v="99"'
  'sec-ch-ua-mobile: ?0'
  'sec-ch-ua-platform: "Linux"'
)

# Build the curl command
curl_command="curl '$url'"
for header in "${headers[@]}"; do
  curl_command+=" -H '$header'"
done

# Execute the curl command
eval "$curl_command"
