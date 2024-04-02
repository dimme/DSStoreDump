#!/usr/bin/env python3
import sys
import requests
from urllib.parse import urljoin
from ds_store import DSStore

def download_file(url):
    local_filename = url.split('/')[-1]
    with requests.get(url, stream=True) as r:
        r.raise_for_status()
        with open(local_filename, 'wb') as f:
            for chunk in r.iter_content(chunk_size=8192):
                f.write(chunk)
    return local_filename

def list_files_in_ds_store(ds_store_path):
    files = set()
    with DSStore.open(ds_store_path, 'r') as d:
        for entry in d:
            files.add(entry.filename)
    return list(files)

def process_ds_store(url):
    ds_store_filename = download_file(url)
    files = list_files_in_ds_store(ds_store_filename)
    base_url = '/'.join(url.split('/')[:-1]) + '/'

    for file in files:
        file_url = urljoin(base_url, file)
        try:
            response = requests.head(file_url)
            if response.status_code == 200:
                print(f"Downloading {file_url}")
                download_file(file_url)
                if file.endswith('.DS_Store'):
                    new_folder_url = file_url.rsplit('/', 1)[0] + '/'
                    process_ds_store(urljoin(new_folder_url, '.DS_Store'))
        except requests.exceptions.RequestException as e:
            print(f"Error downloading {file_url}: {e}")

def main():
    if len(sys.argv) != 2:
        print("Usage: ./DSStoreDump <URL>")
        print("Example: ./DSStoreDump https://example.com/wp-content/uploads/.DS_Store")
        sys.exit(1)

    url = sys.argv[1]
    process_ds_store(url)

if __name__ == "__main__":
    main()
