 ---
 id: 001
 title: Input is lost during rapid, consecutive barcode scans
 type: bug
 status: open
 created_date: 2026-01-15
 ---
 
///SSH 
`ssh -l kcsweb -i ~/.ssh/kcsweb.key sv14783.xserver.jp -p 10022`
Passphrase
kcsssh2024

and the key from kcsweb.key (copy to ~/.ssh/kcsweb.key)

/// SCP
`scp -P 10022 -i ~/.ssh/kcsweb.key ./standalone.html kcsweb@sv14783.xserver.jp:~/standalone.html`
(as an example, replace the paths of course)

/home/kcsweb/k-csweb.com/public_html/
is where files can publicly be accessed
