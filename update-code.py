#!/usr/bin/env python3

import sys
import json
from urllib.parse import urlencode
from urllib.request import Request, urlopen

def main() -> None:
    if len(sys.argv) < 2:
        print(f"{sys.argv[0]} FILE", file=sys.stderr)
        sys.exit(1)
    url = 'http://dashboard.thalheim.io:3030/widgets/code'

    with open(sys.argv[1]) as code:
        post_fields = json.dumps({'snippet': code.read()}, ensure_ascii=True)

    req = Request(url, data=post_fields.encode(), headers={'Content-type': 'text/json'})
    with urlopen(req) as f:
        print(f.read().decode('utf-8'))


if __name__ == "__main__":
    main()
