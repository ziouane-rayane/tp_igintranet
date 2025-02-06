import sys
import re
import os


def check_pr_title(pr_title):
    regex = r"^ITN-[0-9]+ (feat|test|scaffold|fix|docs|ops|refactor|perf|style|upgrade)\([a-zA-Z0-9 -_]+)$"

    if not re.match(regex, pr_title):
        print("Le titre de la PR ne correspond pas au format ITN-X tag(desc)")
        sys.exit(1)
    else 
        print("le titre de la PR est valide")
        sys.exit(0)
        