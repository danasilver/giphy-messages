#!/usr/bin/env python

import sys
import os
import re
import urllib
import urllib2
import json
import random
import subprocess
import logging

directory = os.path.dirname(os.path.abspath(__file__))
send_message_path = os.path.join(directory, 'send_message.applescript')
gifs_path = os.path.join(directory, 'gifs')

argv = sys.argv

if len(argv) != 3:
    sys.exit('Usage: giphy.py message service')

chat = argv[2]

message = re.sub('^gif me ', '', argv[1]).strip()
url = 'http://api.giphy.com/v1/gifs/search?q=%s&limit=5&api_key=dc6zaTOxFJmzC'

response = urllib2.urlopen(url % message.replace(" ", "+"))
data = json.load(response)

maximum = data['pagination']['count'] - 1

if maximum == -1:
    command = ['osascript', '{0}'.format(send_message_path), 'message', chat,
               'No gifs found for: {0}'.format(message)]
    subprocess.call(command, shell=False)
    sys.exit("No gifs found for %s!" % message)

gif = data['data'][random.randint(0, maximum)]
image = gif['images']['fixed_width']['url']
gif_id = gif['id']
gif_type = gif['type']

if not os.path.exists(gifs_path):
    os.makedirs(gifs_path)

local_gif_path = os.path.join(gifs_path, '.'.join((gif_id, gif_type)))
urllib.urlretrieve(image, local_gif_path)

command = ['/usr/bin/osascript', '{0}'.format(send_message_path), 'attachment', chat, local_gif_path]
print command
subprocess.call(command, shell=False)
sys.exit(0)
