import re
import sys

def check_pr_title(prtitle):
    regex = "^ITN-[0-9]+ (feat|test|scaffold|fix|docs|ops|refactor|perf|style|upgrade)([a-zA-Z0-9 -_]+)$"

    if re.search(regex, prtitle):
        print("le titre de la PR est valide")
        sys.exit(0)
    else:
        print("Le titre de la PR ne correspond pas au format ITN-X tag(desc)")
        sys.exit(1)

check_pr_title(sys.argv[1])