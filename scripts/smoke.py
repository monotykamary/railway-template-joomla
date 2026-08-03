#!/usr/bin/env python3
import os,re,requests
b=os.environ['BASE_URL'].rstrip('/');user=os.environ['ADMIN_USER'];pw=os.environ['ADMIN_PASSWORD'];page=requests.get(b+'/',timeout=30);assert page.status_code==200 and 'Joomla' in page.text
s=requests.Session();g=s.get(b+'/administrator/index.php',timeout=30);assert g.status_code==200
def login(password):
 token=re.search(r'name="([a-f0-9]{32})" value="1"',g.text);assert token
 data={'username':user,'passwd':password,'option':'com_login','task':'login',token.group(1):'1'}
 return s.post(b+'/administrator/index.php',data=data,allow_redirects=True,timeout=30)
bad=requests.Session();bg=bad.get(b+'/administrator/index.php');bt=re.search(r'name="([a-f0-9]{32})" value="1"',bg.text);br=bad.post(b+'/administrator/index.php',data={'username':user,'passwd':'wrong','option':'com_login','task':'login',bt.group(1):'1'},allow_redirects=True);assert 'Control Panel' not in br.text
r=login(pw);assert r.status_code==200 and ('Control Panel' in r.text or 'Home Dashboard' in r.text),r.url
print('Joomla smoke checks passed')
