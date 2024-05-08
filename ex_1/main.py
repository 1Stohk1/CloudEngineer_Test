#!/usr/bin/env python3

import os

if __name__ == '__main__':
    path = "ex_1/important_files"
    scripts = []
    script_type = {}
    for file in os.listdir(path):
        if file.endswith(".sh"):
            scripts.append(file)
    for script in scripts:
        script_path = os.path.join(path, script)
        f = open(script_path, "r")
        first_line = f.readline()
        f.close()
        if script_type.get(first_line) is not None:
            script_type[first_line].append(script)
        else:
            script_type[first_line] = [script]
    for key in script_type:
        if len(script_type[key]) > 1:
            print(f"There are {len(script_type[key])} scripts starting with the shebang {key[:-1]}:")
        else:
            print(f"There is 1 script starting with the shebang {key[:-1]}:")
        for script in script_type[key]:
            print(f"\t{script}")
