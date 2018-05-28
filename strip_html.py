test = 'This is just a simple string.' 
test = test.replace('simple', 'short')
test = test.replace('just', 'only')
test = test.replace('string', 'learning')


count = test.count('only')#contar o número de vezes que uma string aparece
find  = test.find('only')#encontrar a posição de uma string
split = test.split('only')#seprar string em um array
join  = ' some '.join(test.split('only'))

#print(join) 



html = ' <!DOCTYPE html> <html> <head> <title>Page Title</title></head> <body> <h1 class="title bootstrap" id="title1">This is a Heading</h1> <p class="title bootstrap" id="title2" >This is a paragraph.</p></body></html> '
html = html.lower()

def remove_html_tags(text):
    """Remove html tags from a string"""
    import re
    clean = re.compile('<.*?>')
    return re.sub(clean, '', text)

string = remove_html_tags(html)
print(string)
