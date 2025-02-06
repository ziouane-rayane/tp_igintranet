import re

regex = "ITN-[0-9]+ feat|test|scaffold|fix|docs|ops|refactor|perf|style|upgrade(([A-Za-z]+( [A-Za-z]+)+))/g"

def check_pull_request_name(name):
    return re.match(name, regex)