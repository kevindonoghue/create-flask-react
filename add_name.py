import os
import sys

root = sys.argv[1]
name = sys.argv[2]

json_path = os.path.join(root, name, 'frontend', 'package.json')
index_path = os.path.join(root, name, 'backend', 'templates', 'index.html')

for path in (json_path, index_path):
  with open(path, 'r') as file:
    data = file.read()
  data = data.replace('PROJECT_NAME', name)
  with open(path, 'w') as file:
    file.write(data)

