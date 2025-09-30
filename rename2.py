import os
import re

def replace_in_file(filepath):
    try:
        with open(filepath, 'r', encoding='utf-8') as f:
            content = f.read()
            
        if 'chatterbox' in content.lower() or 'code' in content.lower():
            content = re.sub(r'chatterbox', 'chatterbox', content, flags=re.IGNORECASE)
            content = re.sub(r'code', 'code', content, flags=re.IGNORECASE)
            with open(filepath, 'w', encoding='utf-8') as f:
                f.write(content)
    except Exception as e:
        pass

def main():
    # File content replacement
    for root, dirs, files in os.walk('.', topdown=False):
        if '.git' in root:
            continue
        for file in files:
            filepath = os.path.join(root, file)
            replace_in_file(filepath)
            
        # rename files
        for file in files:
            if 'chatterbox' in file.lower() or 'code' in file.lower():
                new_name = re.sub(r'chatterbox', 'chatterbox', file, flags=re.IGNORECASE)
                new_name = re.sub(r'code', 'code', new_name, flags=re.IGNORECASE)
                os.rename(os.path.join(root, file), os.path.join(root, new_name))
                
        # rename dirs
        for d in dirs:
            if 'chatterbox' in d.lower() or 'code' in d.lower():
                new_name = re.sub(r'chatterbox', 'chatterbox', d, flags=re.IGNORECASE)
                new_name = re.sub(r'code', 'code', new_name, flags=re.IGNORECASE)
                os.rename(os.path.join(root, d), os.path.join(root, new_name))

if __name__ == '__main__':
    main()
