µ	
èE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\IdentityHostingStartup.cs
[ 
assembly 	
:	 

HostingStartup 
( 
typeof  
(  !&
Ecommerce_proiect_an4_sem1! ;
.; <
Areas< A
.A B
IdentityB J
.J K"
IdentityHostingStartupK a
)a b
)b c
]c d
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
.$ %
Areas% *
.* +
Identity+ 3
{ 
public 

class "
IdentityHostingStartup '
:( )
IHostingStartup* 9
{ 
public 
void 
	Configure 
( 
IWebHostBuilder -
builder. 5
)5 6
{		 	
builder

 
.

 
ConfigureServices

 %
(

% &
(

& '
context

' .
,

. /
services

0 8
)

8 9
=>

: <
{

= >
} 
) 
; 
} 	
} 
} Ù
öE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\AccessDenied.cshtml.cs
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
.$ %
Areas% *
.* +
Identity+ 3
.3 4
Pages4 9
.9 :
Account: A
{ 
public 

class 
AccessDeniedModel "
:# $
	PageModel% .
{ 
public 
void 
OnGet 
( 
) 
{		 	
throw

 
new

 !
NotSupportedException

 +
(

+ ,
)

, -
;

- .
} 	
} 
} Ä
öE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\ConfirmEmail.cshtml.cs
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
.$ %
Areas% *
.* +
Identity+ 3
.3 4
Pages4 9
.9 :
Account: A
{		 
[

 
AllowAnonymous

 
]

 
public 

class 
ConfirmEmailModel "
:# $
	PageModel% .
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
public 
ConfirmEmailModel  
(  !
UserManager! ,
<, -
IdentityUser- 9
>9 :
userManager; F
)F G
{ 	
_userManager 
= 
userManager &
;& '
} 	
public 
async 
Task 
< 
IActionResult '
>' (

OnGetAsync) 3
(3 4
string4 :
userId; A
,A B
stringC I
codeJ N
)N O
{ 	
if 
( 
userId 
== 
null 
|| !
code" &
==' )
null* .
). /
{ 
return 
RedirectToPage %
(% &
$str& .
). /
;/ 0
} 
var 
user 
= 
await 
_userManager )
.) *
FindByIdAsync* 7
(7 8
userId8 >
)> ?
;? @
if 
( 
user 
== 
null 
) 
{ 
return 
NotFound 
(  
$"  ")
Unable to load user with ID '" ?
{? @
userId@ F
}F G
'.G I
"I J
)J K
;K L
} 
var!! 
result!! 
=!! 
await!! 
_userManager!! +
.!!+ ,
ConfirmEmailAsync!!, =
(!!= >
user!!> B
,!!B C
code!!D H
)!!H I
;!!I J
if"" 
("" 
!"" 
result"" 
."" 
	Succeeded"" !
)""! "
{## 
throw$$ 
new$$ %
InvalidOperationException$$ 3
($$3 4
$"$$4 65
)Error confirming email for user with ID '$$6 _
{$$_ `
userId$$` f
}$$f g
':$$g i
"$$i j
)$$j k
;$$k l
}%% 
return'' 
Page'' 
('' 
)'' 
;'' 
}(( 	
})) 
}** “\
õE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\ExternalLogin.cshtml.cs
	namespace

 	&
Ecommerce_proiect_an4_sem1


 $
.

$ %
Areas

% *
.

* +
Identity

+ 3
.

3 4
Pages

4 9
.

9 :
Account

: A
{ 
[ 
AllowAnonymous 
] 
public 

class 
ExternalLoginModel #
:$ %
	PageModel& /
{ 
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
ILogger  
<  !
ExternalLoginModel! 3
>3 4
_logger5 <
;< =
public 
ExternalLoginModel !
(! "
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
,5 6
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
ILogger 
< 
ExternalLoginModel &
>& '
logger( .
). /
{ 	
_signInManager 
= 
signInManager *
;* +
_userManager 
= 
userManager &
;& '
_logger 
= 
logger 
; 
} 	
[ 	
BindProperty	 
] 
public 

InputModel 
Input 
{  !
get" %
;% &
set' *
;* +
}, -
public   
string   
LoginProvider   #
{  $ %
get  & )
;  ) *
set  + .
;  . /
}  0 1
public"" 
string"" 
	ReturnUrl"" 
{""  !
get""" %
;""% &
set""' *
;""* +
}"", -
[$$ 	
TempData$$	 
]$$ 
public%% 
string%% 
ErrorMessage%% "
{%%# $
get%%% (
;%%( )
set%%* -
;%%- .
}%%/ 0
public'' 
class'' 

InputModel'' 
{(( 	
[)) 
Required)) 
])) 
[** 
EmailAddress** 
]** 
public++ 
string++ 
Email++ 
{++  !
get++" %
;++% &
set++' *
;++* +
}++, -
},, 	
public.. 
IActionResult.. 

OnGetAsync.. '
(..' (
)..( )
{// 	
return00 
RedirectToPage00 !
(00! "
$str00" +
)00+ ,
;00, -
}11 	
public33 
IActionResult33 
OnPost33 #
(33# $
string33$ *
provider33+ 3
,333 4
string335 ;
	returnUrl33< E
=33F G
null33H L
)33L M
{44 	
var66 
redirectUrl66 
=66 
Url66 !
.66! "
Page66" &
(66& '
$str66' 8
,668 9
pageHandler66: E
:66E F
$str66G Q
,66Q R
values66S Y
:66Y Z
new66[ ^
{66_ `
	returnUrl66a j
}66k l
)66l m
;66m n
var77 

properties77 
=77 
_signInManager77 +
.77+ ,5
)ConfigureExternalAuthenticationProperties77, U
(77U V
provider77V ^
,77^ _
redirectUrl77` k
)77k l
;77l m
return88 
new88 
ChallengeResult88 &
(88& '
provider88' /
,88/ 0

properties881 ;
)88; <
;88< =
}99 	
public;; 
async;; 
Task;; 
<;; 
IActionResult;; '
>;;' (
OnGetCallbackAsync;;) ;
(;;; <
string;;< B
	returnUrl;;C L
=;;M N
null;;O S
,;;S T
string;;U [
remoteError;;\ g
=;;h i
null;;j n
);;n o
{<< 	
	returnUrl== 
=== 
	returnUrl== !
??==" $
Url==% (
.==( )
Content==) 0
(==0 1
$str==1 5
)==5 6
;==6 7
if>> 
(>> 
remoteError>> 
!=>> 
null>> #
)>># $
{?? 
ErrorMessage@@ 
=@@ 
$"@@ !*
Error from external provider: @@! ?
{@@? @
remoteError@@@ K
}@@K L
"@@L M
;@@M N
returnAA 
RedirectToPageAA %
(AA% &
$strAA& /
,AA/ 0
newAA1 4
{AA5 6
	ReturnUrlAA6 ?
=AA@ A
	returnUrlAAB K
}AAL M
)AAM N
;AAN O
}BB 
varCC 
infoCC 
=CC 
awaitCC 
_signInManagerCC +
.CC+ ,%
GetExternalLoginInfoAsyncCC, E
(CCE F
)CCF G
;CCG H
ifDD 
(DD 
infoDD 
==DD 
nullDD 
)DD 
{EE 
ErrorMessageFF 
=FF 
$strFF J
;FFJ K
returnGG 
RedirectToPageGG %
(GG% &
$strGG& /
,GG/ 0
newGG1 4
{GG5 6
	ReturnUrlGG7 @
=GGA B
	returnUrlGGC L
}GGM N
)GGN O
;GGO P
}HH 
varKK 
resultKK 
=KK 
awaitKK 
_signInManagerKK -
.KK- .$
ExternalLoginSignInAsyncKK. F
(KKF G
infoKKG K
.KKK L
LoginProviderKKL Y
,KKY Z
infoKK[ _
.KK_ `
ProviderKeyKK` k
,KKk l
isPersistentKKm y
:KKy z
false	KK{ Ä
,
KKÄ Å
bypassTwoFactor
KKÇ ë
:
KKí ì
true
KKî ò
)
KKò ô
;
KKô ö
ifLL 
(LL 
resultLL 
.LL 
	SucceededLL  
)LL  !
{MM 
_loggerNN 
.NN 
LogInformationNN &
(NN& '
$strNN' X
,NNX Y
infoNNZ ^
.NN^ _
	PrincipalNN_ h
.NNh i
IdentityNNi q
.NNq r
NameNNr v
,NNv w
infoNNx |
.NN| }
LoginProvider	NN} ä
)
NNä ã
;
NNã å
returnOO 
LocalRedirectOO $
(OO$ %
	returnUrlOO% .
)OO. /
;OO/ 0
}PP 
ifQQ 
(QQ 
resultQQ 
.QQ 
IsLockedOutQQ "
)QQ" #
{RR 
returnSS 
RedirectToPageSS %
(SS% &
$strSS& 1
)SS1 2
;SS2 3
}TT 
elseUU 
{VV 
	ReturnUrlXX 
=XX 
	returnUrlXX %
;XX% &
LoginProviderYY 
=YY 
infoYY  $
.YY$ %
LoginProviderYY% 2
;YY2 3
ifZZ 
(ZZ 
infoZZ 
.ZZ 
	PrincipalZZ "
.ZZ" #
HasClaimZZ# +
(ZZ+ ,
cZZ, -
=>ZZ. 0
cZZ1 2
.ZZ2 3
TypeZZ3 7
==ZZ8 :

ClaimTypesZZ; E
.ZZE F
EmailZZF K
)ZZK L
)ZZL M
{[[ 
Input\\ 
=\\ 
new\\ 

InputModel\\  *
{]] 
Email^^ 
=^^ 
info^^  $
.^^$ %
	Principal^^% .
.^^. /
FindFirstValue^^/ =
(^^= >

ClaimTypes^^> H
.^^H I
Email^^I N
)^^N O
}__ 
;__ 
}`` 
returnaa 
Pageaa 
(aa 
)aa 
;aa 
}bb 
}cc 	
publicee 
asyncee 
Taskee 
<ee 
IActionResultee '
>ee' (#
OnPostConfirmationAsyncee) @
(ee@ A
stringeeA G
	returnUrleeH Q
=eeR S
nulleeT X
)eeX Y
{ff 	
	returnUrlgg 
=gg 
	returnUrlgg !
??gg" $
Urlgg% (
.gg( )
Contentgg) 0
(gg0 1
$strgg1 5
)gg5 6
;gg6 7
varii 
infoii 
=ii 
awaitii 
_signInManagerii +
.ii+ ,%
GetExternalLoginInfoAsyncii, E
(iiE F
)iiF G
;iiG H
ifjj 
(jj 
infojj 
==jj 
nulljj 
)jj 
{kk 
ErrorMessagell 
=ll 
$strll ^
;ll^ _
returnmm 
RedirectToPagemm %
(mm% &
$strmm& /
,mm/ 0
newmm1 4
{mm5 6
	ReturnUrlmm7 @
=mmA B
	returnUrlmmC L
}mmM N
)mmN O
;mmO P
}nn 
ifpp 
(pp 

ModelStatepp 
.pp 
IsValidpp "
)pp" #
{qq 
varrr 
userrr 
=rr 
newrr 
IdentityUserrr +
{rr, -
UserNamerr. 6
=rr7 8
Inputrr9 >
.rr> ?
Emailrr? D
,rrD E
EmailrrF K
=rrL M
InputrrN S
.rrS T
EmailrrT Y
}rrZ [
;rr[ \
varss 
resultss 
=ss 
awaitss "
_userManagerss# /
.ss/ 0
CreateAsyncss0 ;
(ss; <
userss< @
)ss@ A
;ssA B
iftt 
(tt 
resulttt 
.tt 
	Succeededtt $
)tt$ %
{uu 
resultvv 
=vv 
awaitvv "
_userManagervv# /
.vv/ 0
AddLoginAsyncvv0 =
(vv= >
uservv> B
,vvB C
infovvD H
)vvH I
;vvI J
ifww 
(ww 
resultww 
.ww 
	Succeededww (
)ww( )
{xx 
awaityy 
_signInManageryy ,
.yy, -
SignInAsyncyy- 8
(yy8 9
useryy9 =
,yy= >
isPersistentyy? K
:yyK L
falseyyM R
)yyR S
;yyS T
_loggerzz 
.zz  
LogInformationzz  .
(zz. /
$strzz/ _
,zz_ `
infozza e
.zze f
LoginProviderzzf s
)zzs t
;zzt u
return{{ 
LocalRedirect{{ ,
({{, -
	returnUrl{{- 6
){{6 7
;{{7 8
}|| 
}}} 
foreach~~ 
(~~ 
var~~ 
error~~ "
in~~# %
result~~& ,
.~~, -
Errors~~- 3
)~~3 4
{ 

ModelState
ÄÄ 
.
ÄÄ 
AddModelError
ÄÄ ,
(
ÄÄ, -
string
ÄÄ- 3
.
ÄÄ3 4
Empty
ÄÄ4 9
,
ÄÄ9 :
error
ÄÄ; @
.
ÄÄ@ A
Description
ÄÄA L
)
ÄÄL M
;
ÄÄM N
}
ÅÅ 
}
ÇÇ 
LoginProvider
ÑÑ 
=
ÑÑ 
info
ÑÑ  
.
ÑÑ  !
LoginProvider
ÑÑ! .
;
ÑÑ. /
	ReturnUrl
ÖÖ 
=
ÖÖ 
	returnUrl
ÖÖ !
;
ÖÖ! "
return
ÜÜ 
Page
ÜÜ 
(
ÜÜ 
)
ÜÜ 
;
ÜÜ 
}
áá 	
}
àà 
}ââ Õ!
úE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\ForgotPassword.cshtml.cs
	namespace

 	&
Ecommerce_proiect_an4_sem1


 $
.

$ %
Areas

% *
.

* +
Identity

+ 3
.

3 4
Pages

4 9
.

9 :
Account

: A
{ 
[ 
AllowAnonymous 
] 
public 

class 
ForgotPasswordModel $
:% &
	PageModel' 0
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
IEmailSender %
_emailSender& 2
;2 3
public 
ForgotPasswordModel "
(" #
UserManager# .
<. /
IdentityUser/ ;
>; <
userManager= H
,H I
IEmailSenderJ V
emailSenderW b
)b c
{ 	
_userManager 
= 
userManager &
;& '
_emailSender 
= 
emailSender &
;& '
} 	
[ 	
BindProperty	 
] 
public 

InputModel 
Input 
{  !
get" %
;% &
set' *
;* +
}, -
public 
class 

InputModel 
{ 	
[ 
Required 
] 
[ 
EmailAddress 
] 
public 
string 
Email 
{  !
get" %
;% &
set' *
;* +
}, -
}   	
public"" 
async"" 
Task"" 
<"" 
IActionResult"" '
>""' (
OnPostAsync"") 4
(""4 5
)""5 6
{## 	
if$$ 
($$ 

ModelState$$ 
.$$ 
IsValid$$ "
)$$" #
{%% 
var&& 
user&& 
=&& 
await&&  
_userManager&&! -
.&&- .
FindByEmailAsync&&. >
(&&> ?
Input&&? D
.&&D E
Email&&E J
)&&J K
;&&K L
if'' 
('' 
user'' 
=='' 
null''  
||''! #
!''$ %
(''% &
await''& +
_userManager'', 8
.''8 9!
IsEmailConfirmedAsync''9 N
(''N O
user''O S
)''S T
)''T U
)''U V
{(( 
return** 
RedirectToPage** )
(**) *
$str*** H
)**H I
;**I J
}++ 
var// 
code// 
=// 
await//  
_userManager//! -
.//- .+
GeneratePasswordResetTokenAsync//. M
(//M N
user//N R
)//R S
;//S T
var00 
callbackUrl00 
=00  !
Url00" %
.00% &
Page00& *
(00* +
$str11 ,
,11, -
pageHandler22 
:22  
null22! %
,22% &
values33 
:33 
new33 
{33  !
code33" &
}33' (
,33( )
protocol44 
:44 
Request44 %
.44% &
Scheme44& ,
)44, -
;44- .
await66 
_emailSender66 "
.66" #
SendEmailAsync66# 1
(661 2
Input77 
.77 
Email77 
,77  
$str88 $
,88$ %
$"99 3
'Please reset your password by <a href='99 =
{99= >
HtmlEncoder99> I
.99I J
Default99J Q
.99Q R
Encode99R X
(99X Y
callbackUrl99Y d
)99d e
}99e f 
'>clicking here</a>.99f z
"99z {
)99{ |
;99| }
return;; 
RedirectToPage;; %
(;;% &
$str;;& D
);;D E
;;;E F
}<< 
return>> 
Page>> 
(>> 
)>> 
;>> 
}?? 	
}@@ 
}AA ≈
®E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\ForgotPasswordConfirmation.cshtml.cs
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
.$ %
Areas% *
.* +
Identity+ 3
.3 4
Pages4 9
.9 :
Account: A
{ 
[ 
AllowAnonymous 
] 
public 

class &
ForgotPasswordConfirmation +
:, -
	PageModel. 7
{		 
public

 
void

 
OnGet

 
(

 
)

 
{ 	
throw 
new !
NotSupportedException +
(+ ,
), -
;- .
} 	
} 
} §
ïE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\Lockout.cshtml.cs
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
.$ %
Areas% *
.* +
Identity+ 3
.3 4
Pages4 9
.9 :
Account: A
{ 
[ 
AllowAnonymous 
] 
public 

class 
LockoutModel 
: 
	PageModel  )
{		 
public

 
void

 
OnGet

 
(

 
)

 
{ 	
throw 
new !
NotSupportedException +
(+ ,
), -
;- .
} 	
} 
} ˇ8
ìE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\Login.cshtml.cs
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
.$ %
Areas% *
.* +
Identity+ 3
.3 4
Pages4 9
.9 :
Account: A
{ 
[ 
AllowAnonymous 
] 
public 

class 

LoginModel 
: 
	PageModel '
{ 
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
ILogger  
<  !

LoginModel! +
>+ ,
_logger- 4
;4 5
public 

LoginModel 
( 
SignInManager '
<' (
IdentityUser( 4
>4 5
signInManager6 C
,C D
ILoggerE L
<L M

LoginModelM W
>W X
loggerY _
)_ `
{ 	
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
[ 	
BindProperty	 
] 
public 

InputModel 
Input 
{  !
get" %
;% &
set' *
;* +
}, -
public 
IList 
<  
AuthenticationScheme )
>) *
ExternalLogins+ 9
{: ;
get< ?
;? @
setA D
;D E
}F G
public   
string   
	ReturnUrl   
{    !
get  " %
;  % &
set  ' *
;  * +
}  , -
["" 	
TempData""	 
]"" 
public## 
string## 
ErrorMessage## "
{### $
get##% (
;##( )
set##* -
;##- .
}##/ 0
public%% 
class%% 

InputModel%% 
{&& 	
['' 
Required'' 
]'' 
[(( 
EmailAddress(( 
](( 
public)) 
string)) 
Email)) 
{))  !
get))" %
;))% &
set))' *
;))* +
})), -
[++ 
Required++ 
]++ 
[,, 
DataType,, 
(,, 
DataType,, 
.,, 
Password,, '
),,' (
],,( )
public-- 
string-- 
Password-- "
{--# $
get--% (
;--( )
set--* -
;--- .
}--/ 0
[// 
Display// 
(// 
Name// 
=// 
$str// *
)//* +
]//+ ,
public00 
bool00 

RememberMe00 "
{00# $
get00% (
;00( )
set00* -
;00- .
}00/ 0
}11 	
public33 
async33 
Task33 

OnGetAsync33 $
(33$ %
string33% +
	returnUrl33, 5
=336 7
null338 <
)33< =
{44 	
if55 
(55 
!55 
string55 
.55 
IsNullOrEmpty55 %
(55% &
ErrorMessage55& 2
)552 3
)553 4
{66 

ModelState77 
.77 
AddModelError77 (
(77( )
string77) /
.77/ 0
Empty770 5
,775 6
ErrorMessage777 C
)77C D
;77D E
}88 
	returnUrl:: 
=:: 
	returnUrl:: !
??::" $
Url::% (
.::( )
Content::) 0
(::0 1
$str::1 5
)::5 6
;::6 7
await== 
HttpContext== 
.== 
SignOutAsync== *
(==* +
IdentityConstants==+ <
.==< =
ExternalScheme=== K
)==K L
;==L M
ExternalLogins?? 
=?? 
(?? 
await?? #
_signInManager??$ 2
.??2 31
%GetExternalAuthenticationSchemesAsync??3 X
(??X Y
)??Y Z
)??Z [
.??[ \
ToList??\ b
(??b c
)??c d
;??d e
	ReturnUrlAA 
=AA 
	returnUrlAA !
;AA! "
}BB 	
publicDD 
asyncDD 
TaskDD 
<DD 
IActionResultDD '
>DD' (
OnPostAsyncDD) 4
(DD4 5
stringDD5 ;
	returnUrlDD< E
=DDF G
nullDDH L
)DDL M
{EE 	
	returnUrlFF 
=FF 
	returnUrlFF !
??FF" $
UrlFF% (
.FF( )
ContentFF) 0
(FF0 1
$strFF1 5
)FF5 6
;FF6 7
ifHH 
(HH 

ModelStateHH 
.HH 
IsValidHH "
)HH" #
{II 
varLL 
resultLL 
=LL 
awaitLL "
_signInManagerLL# 1
.LL1 2
PasswordSignInAsyncLL2 E
(LLE F
InputLLF K
.LLK L
EmailLLL Q
,LLQ R
InputLLS X
.LLX Y
PasswordLLY a
,LLa b
InputLLc h
.LLh i

RememberMeLLi s
,LLs t
lockoutOnFailure	LLu Ö
:
LLÖ Ü
true
LLá ã
)
LLã å
;
LLå ç
ifMM 
(MM 
resultMM 
.MM 
	SucceededMM $
)MM$ %
{NN 
_loggerOO 
.OO 
LogInformationOO *
(OO* +
$strOO+ <
)OO< =
;OO= >
returnPP 
LocalRedirectPP (
(PP( )
	returnUrlPP) 2
)PP2 3
;PP3 4
}QQ 
ifRR 
(RR 
resultRR 
.RR 
RequiresTwoFactorRR ,
)RR, -
{SS 
returnTT 
RedirectToPageTT )
(TT) *
$strTT* :
,TT: ;
newTT< ?
{TT@ A
	ReturnUrlTTB K
=TTL M
	returnUrlTTN W
,TTW X

RememberMeTTY c
=TTd e
InputTTf k
.TTk l

RememberMeTTl v
}TTw x
)TTx y
;TTy z
}UU 
ifVV 
(VV 
resultVV 
.VV 
IsLockedOutVV &
)VV& '
{WW 
_loggerXX 
.XX 

LogWarningXX &
(XX& '
$strXX' A
)XXA B
;XXB C
returnYY 
RedirectToPageYY )
(YY) *
$strYY* 5
)YY5 6
;YY6 7
}ZZ 
else[[ 
{\\ 

ModelState]] 
.]] 
AddModelError]] ,
(]], -
string]]- 3
.]]3 4
Empty]]4 9
,]]9 :
$str]]; S
)]]S T
;]]T U
return^^ 
Page^^ 
(^^  
)^^  !
;^^! "
}__ 
}`` 
returncc 
Pagecc 
(cc 
)cc 
;cc 
}dd 	
}ee 
}ff Å<
öE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\LoginWith2fa.cshtml.cs
	namespace

 	&
Ecommerce_proiect_an4_sem1


 $
.

$ %
Areas

% *
.

* +
Identity

+ 3
.

3 4
Pages

4 9
.

9 :
Account

: A
{ 
[ 
AllowAnonymous 
] 
public 

class 
LoginWith2faModel "
:# $
	PageModel% .
{ 
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
ILogger  
<  !
LoginWith2faModel! 2
>2 3
_logger4 ;
;; <
public 
LoginWith2faModel  
(  !
SignInManager! .
<. /
IdentityUser/ ;
>; <
signInManager= J
,J K
ILoggerL S
<S T
LoginWith2faModelT e
>e f
loggerg m
)m n
{ 	
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
[ 	
BindProperty	 
] 
public 

InputModel 
Input 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 

RememberMe 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
	ReturnUrl 
{  !
get" %
;% &
set' *
;* +
}, -
public 
class 

InputModel 
{   	
[!! 
Required!! 
]!! 
["" 
StringLength"" 
("" 
$num"" 
,"" 
ErrorMessage"" )
=""* +
$str"", j
,""j k
MinimumLength""l y
=""z {
$num""| }
)""} ~
]""~ 
[## 
DataType## 
(## 
DataType## 
.## 
Text## #
)### $
]##$ %
[$$ 
Display$$ 
($$ 
Name$$ 
=$$ 
$str$$ 0
)$$0 1
]$$1 2
public%% 
string%% 
TwoFactorCode%% '
{%%( )
get%%* -
;%%- .
set%%/ 2
;%%2 3
}%%4 5
['' 
Display'' 
('' 
Name'' 
='' 
$str'' 3
)''3 4
]''4 5
public(( 
bool(( 
RememberMachine(( '
{((( )
get((* -
;((- .
set((/ 2
;((2 3
}((4 5
})) 	
public++ 
async++ 
Task++ 
<++ 
IActionResult++ '
>++' (

OnGetAsync++) 3
(++3 4
bool++4 8

rememberMe++9 C
,++C D
string++E K
	returnUrl++L U
=++V W
null++X \
)++\ ]
{,, 	
var.. 
user.. 
=.. 
await.. 
_signInManager.. +
...+ ,/
#GetTwoFactorAuthenticationUserAsync.., O
(..O P
)..P Q
;..Q R
if00 
(00 
user00 
==00 
null00 
)00 
{11 
throw22 
new22 %
InvalidOperationException22 3
(223 4
$"224 6:
.Unable to load two-factor authentication user.226 d
"22d e
)22e f
;22f g
}33 
	ReturnUrl55 
=55 
	returnUrl55 !
;55! "

RememberMe66 
=66 

rememberMe66 #
;66# $
return88 
Page88 
(88 
)88 
;88 
}99 	
public;; 
async;; 
Task;; 
<;; 
IActionResult;; '
>;;' (
OnPostAsync;;) 4
(;;4 5
bool;;5 9

rememberMe;;: D
,;;D E
string;;F L
	returnUrl;;M V
=;;W X
null;;Y ]
);;] ^
{<< 	
if== 
(== 
!== 

ModelState== 
.== 
IsValid== #
)==# $
{>> 
return?? 
Page?? 
(?? 
)?? 
;?? 
}@@ 
	returnUrlBB 
=BB 
	returnUrlBB !
??BB" $
UrlBB% (
.BB( )
ContentBB) 0
(BB0 1
$strBB1 5
)BB5 6
;BB6 7
varDD 
userDD 
=DD 
awaitDD 
_signInManagerDD +
.DD+ ,/
#GetTwoFactorAuthenticationUserAsyncDD, O
(DDO P
)DDP Q
;DDQ R
ifEE 
(EE 
userEE 
==EE 
nullEE 
)EE 
{FF 
throwGG 
newGG %
InvalidOperationExceptionGG 3
(GG3 4
$"GG4 6:
.Unable to load two-factor authentication user.GG6 d
"GGd e
)GGe f
;GGf g
}HH 
varJJ 
authenticatorCodeJJ !
=JJ" #
InputJJ$ )
.JJ) *
TwoFactorCodeJJ* 7
.JJ7 8
ReplaceJJ8 ?
(JJ? @
$strJJ@ C
,JJC D
stringJJE K
.JJK L
EmptyJJL Q
)JJQ R
.JJR S
ReplaceJJS Z
(JJZ [
$strJJ[ ^
,JJ^ _
stringJJ` f
.JJf g
EmptyJJg l
)JJl m
;JJm n
varLL 
resultLL 
=LL 
awaitLL 
_signInManagerLL -
.LL- .-
!TwoFactorAuthenticatorSignInAsyncLL. O
(LLO P
authenticatorCodeLLP a
,LLa b

rememberMeLLc m
,LLm n
InputLLo t
.LLt u
RememberMachine	LLu Ñ
)
LLÑ Ö
;
LLÖ Ü
ifNN 
(NN 
resultNN 
.NN 
	SucceededNN  
)NN  !
{OO 
_loggerPP 
.PP 
LogInformationPP &
(PP& '
$strPP' T
,PPT U
userPPV Z
.PPZ [
IdPP[ ]
)PP] ^
;PP^ _
returnQQ 
LocalRedirectQQ $
(QQ$ %
	returnUrlQQ% .
)QQ. /
;QQ/ 0
}RR 
elseSS 
ifSS 
(SS 
resultSS 
.SS 
IsLockedOutSS '
)SS' (
{TT 
_loggerUU 
.UU 

LogWarningUU "
(UU" #
$strUU# P
,UUP Q
userUUR V
.UUV W
IdUUW Y
)UUY Z
;UUZ [
returnVV 
RedirectToPageVV %
(VV% &
$strVV& 1
)VV1 2
;VV2 3
}WW 
elseXX 
{YY 
_loggerZZ 
.ZZ 

LogWarningZZ "
(ZZ" #
$strZZ# d
,ZZd e
userZZf j
.ZZj k
IdZZk m
)ZZm n
;ZZn o

ModelState[[ 
.[[ 
AddModelError[[ (
([[( )
string[[) /
.[[/ 0
Empty[[0 5
,[[5 6
$str[[7 T
)[[T U
;[[U V
return\\ 
Page\\ 
(\\ 
)\\ 
;\\ 
}]] 
}^^ 	
}__ 
}`` Î2
£E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\LoginWithRecoveryCode.cshtml.cs
	namespace

 	&
Ecommerce_proiect_an4_sem1


 $
.

$ %
Areas

% *
.

* +
Identity

+ 3
.

3 4
Pages

4 9
.

9 :
Account

: A
{ 
[ 
AllowAnonymous 
] 
public 

class &
LoginWithRecoveryCodeModel +
:, -
	PageModel. 7
{ 
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
ILogger  
<  !&
LoginWithRecoveryCodeModel! ;
>; <
_logger= D
;D E
public &
LoginWithRecoveryCodeModel )
() *
SignInManager* 7
<7 8
IdentityUser8 D
>D E
signInManagerF S
,S T
ILoggerU \
<\ ]&
LoginWithRecoveryCodeModel] w
>w x
loggery 
)	 Ä
{ 	
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
[ 	
BindProperty	 
] 
public 

InputModel 
Input 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
	ReturnUrl 
{  !
get" %
;% &
set' *
;* +
}, -
public 
class 

InputModel 
{ 	
[ 
BindProperty 
] 
[   
Required   
]   
[!! 
DataType!! 
(!! 
DataType!! 
.!! 
Text!! #
)!!# $
]!!$ %
["" 
Display"" 
("" 
Name"" 
="" 
$str"" +
)""+ ,
]"", -
public## 
string## 
RecoveryCode## &
{##' (
get##) ,
;##, -
set##. 1
;##1 2
}##3 4
}$$ 	
public&& 
async&& 
Task&& 
<&& 
IActionResult&& '
>&&' (

OnGetAsync&&) 3
(&&3 4
string&&4 :
	returnUrl&&; D
=&&E F
null&&G K
)&&K L
{'' 	
var)) 
user)) 
=)) 
await)) 
_signInManager)) +
.))+ ,/
#GetTwoFactorAuthenticationUserAsync)), O
())O P
)))P Q
;))Q R
if** 
(** 
user** 
==** 
null** 
)** 
{++ 
throw,, 
new,, %
InvalidOperationException,, 3
(,,3 4
$",,4 6:
.Unable to load two-factor authentication user.,,6 d
",,d e
),,e f
;,,f g
}-- 
	ReturnUrl// 
=// 
	returnUrl// !
;//! "
return11 
Page11 
(11 
)11 
;11 
}22 	
public44 
async44 
Task44 
<44 
IActionResult44 '
>44' (
OnPostAsync44) 4
(444 5
string445 ;
	returnUrl44< E
=44F G
null44H L
)44L M
{55 	
if66 
(66 
!66 

ModelState66 
.66 
IsValid66 #
)66# $
{77 
return88 
Page88 
(88 
)88 
;88 
}99 
var;; 
user;; 
=;; 
await;; 
_signInManager;; +
.;;+ ,/
#GetTwoFactorAuthenticationUserAsync;;, O
(;;O P
);;P Q
;;;Q R
if<< 
(<< 
user<< 
==<< 
null<< 
)<< 
{== 
throw>> 
new>> %
InvalidOperationException>> 3
(>>3 4
$">>4 6:
.Unable to load two-factor authentication user.>>6 d
">>d e
)>>e f
;>>f g
}?? 
varAA 
recoveryCodeAA 
=AA 
InputAA $
.AA$ %
RecoveryCodeAA% 1
.AA1 2
ReplaceAA2 9
(AA9 :
$strAA: =
,AA= >
stringAA? E
.AAE F
EmptyAAF K
)AAK L
;AAL M
varCC 
resultCC 
=CC 
awaitCC 
_signInManagerCC -
.CC- .,
 TwoFactorRecoveryCodeSignInAsyncCC. N
(CCN O
recoveryCodeCCO [
)CC[ \
;CC\ ]
ifEE 
(EE 
resultEE 
.EE 
	SucceededEE  
)EE  !
{FF 
_loggerGG 
.GG 
LogInformationGG &
(GG& '
$strGG' `
,GG` a
userGGb f
.GGf g
IdGGg i
)GGi j
;GGj k
returnHH 
LocalRedirectHH $
(HH$ %
	returnUrlHH% .
??HH/ 1
UrlHH2 5
.HH5 6
ContentHH6 =
(HH= >
$strHH> B
)HHB C
)HHC D
;HHD E
}II 
ifJJ 
(JJ 
resultJJ 
.JJ 
IsLockedOutJJ "
)JJ" #
{KK 
_loggerLL 
.LL 

LogWarningLL "
(LL" #
$strLL# P
,LLP Q
userLLR V
.LLV W
IdLLW Y
)LLY Z
;LLZ [
returnMM 
RedirectToPageMM %
(MM% &
$strMM& 1
)MM1 2
;MM2 3
}NN 
elseOO 
{PP 
_loggerQQ 
.QQ 

LogWarningQQ "
(QQ" #
$strQQ# _
,QQ_ `
userQQa e
.QQe f
IdQQf h
)QQh i
;QQi j

ModelStateRR 
.RR 
AddModelErrorRR (
(RR( )
stringRR) /
.RR/ 0
EmptyRR0 5
,RR5 6
$strRR7 W
)RRW X
;RRX Y
returnSS 
PageSS 
(SS 
)SS 
;SS 
}TT 
}UU 	
}VV 
}WW ’
îE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\Logout.cshtml.cs
	namespace		 	&
Ecommerce_proiect_an4_sem1		
 $
.		$ %
Areas		% *
.		* +
Identity		+ 3
.		3 4
Pages		4 9
.		9 :
Account		: A
{

 
[ 
AllowAnonymous 
] 
public 

class 
LogoutModel 
: 
	PageModel (
{ 
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
ILogger  
<  !
LogoutModel! ,
>, -
_logger. 5
;5 6
public 
LogoutModel 
( 
SignInManager (
<( )
IdentityUser) 5
>5 6
signInManager7 D
,D E
ILoggerF M
<M N
LogoutModelN Y
>Y Z
logger[ a
)a b
{ 	
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
public 
void 
OnGet 
( 
) 
{ 	
throw 
new !
NotSupportedException +
(+ ,
), -
;- .
} 	
public 
async 
Task 
< 
IActionResult '
>' (
OnPost) /
(/ 0
string0 6
	returnUrl7 @
=A B
nullC G
)G H
{ 	
await 
_signInManager  
.  !
SignOutAsync! -
(- .
). /
;/ 0
_logger 
. 
LogInformation "
(" #
$str# 5
)5 6
;6 7
if   
(   
	returnUrl   
!=   
null   !
)  ! "
{!! 
return"" 
LocalRedirect"" $
(""$ %
	returnUrl""% .
)"". /
;""/ 0
}## 
else$$ 
{%% 
return&& 
Page&& 
(&& 
)&& 
;&& 
}'' 
}(( 	
})) 
}** Ü?
£E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\Manage\ChangePassword.cshtml.cs
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
.$ %
Areas% *
.* +
Identity+ 3
.3 4
Pages4 9
.9 :
Account: A
.A B
ManageB H
{ 
public		 

class		 
ChangePasswordModel		 $
:		% &
	PageModel		' 0
{

 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
ILogger  
<  !
ChangePasswordModel! 4
>4 5
_logger6 =
;= >
public 
ChangePasswordModel "
(" #
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
,5 6
ILogger 
< 
ChangePasswordModel '
>' (
logger) /
)/ 0
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
[ 	
BindProperty	 
] 
public 

InputModel 
Input 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
TempData	 
] 
public 
string 
StatusMessage #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
class 

InputModel 
{   	
[!! 
Required!! 
]!! 
["" 
DataType"" 
("" 
DataType"" 
."" 
Password"" '
)""' (
]""( )
[## 
Display## 
(## 
Name## 
=## 
$str## .
)##. /
]##/ 0
public$$ 
string$$ 
OldPassword$$ %
{$$& '
get$$( +
;$$+ ,
set$$- 0
;$$0 1
}$$2 3
[&& 
Required&& 
]&& 
['' 
StringLength'' 
('' 
$num'' 
,'' 
ErrorMessage'' +
='', -
$str''. l
,''l m
MinimumLength''n {
=''| }
$num''~ 
)	'' Ä
]
''Ä Å
[(( 
DataType(( 
((( 
DataType(( 
.(( 
Password(( '
)((' (
]((( )
[)) 
Display)) 
()) 
Name)) 
=)) 
$str)) *
)))* +
]))+ ,
public** 
string** 
NewPassword** %
{**& '
get**( +
;**+ ,
set**- 0
;**0 1
}**2 3
[,, 
DataType,, 
(,, 
DataType,, 
.,, 
Password,, '
),,' (
],,( )
[-- 
Display-- 
(-- 
Name-- 
=-- 
$str-- 2
)--2 3
]--3 4
[.. 
Compare.. 
(.. 
$str.. "
,.." #
ErrorMessage..$ 0
=..1 2
$str..3 m
)..m n
]..n o
public// 
string// 
ConfirmPassword// )
{//* +
get//, /
;/// 0
set//1 4
;//4 5
}//6 7
}00 	
public22 
async22 
Task22 
<22 
IActionResult22 '
>22' (

OnGetAsync22) 3
(223 4
)224 5
{33 	
var44 
user44 
=44 
await44 
_userManager44 )
.44) *
GetUserAsync44* 6
(446 7
User447 ;
)44; <
;44< =
if55 
(55 
user55 
==55 
null55 
)55 
{66 
return77 
NotFound77 
(77  
$"77  ")
Unable to load user with ID '77" ?
{77? @
_userManager77@ L
.77L M
	GetUserId77M V
(77V W
User77W [
)77[ \
}77\ ]
'.77] _
"77_ `
)77` a
;77a b
}88 
var:: 
hasPassword:: 
=:: 
await:: #
_userManager::$ 0
.::0 1
HasPasswordAsync::1 A
(::A B
user::B F
)::F G
;::G H
if;; 
(;; 
!;; 
hasPassword;; 
);; 
{<< 
return== 
RedirectToPage== %
(==% &
$str==& 5
)==5 6
;==6 7
}>> 
return@@ 
Page@@ 
(@@ 
)@@ 
;@@ 
}AA 	
publicCC 
asyncCC 
TaskCC 
<CC 
IActionResultCC '
>CC' (
OnPostAsyncCC) 4
(CC4 5
)CC5 6
{DD 	
ifEE 
(EE 
!EE 

ModelStateEE 
.EE 
IsValidEE #
)EE# $
{FF 
returnGG 
PageGG 
(GG 
)GG 
;GG 
}HH 
varJJ 
userJJ 
=JJ 
awaitJJ 
_userManagerJJ )
.JJ) *
GetUserAsyncJJ* 6
(JJ6 7
UserJJ7 ;
)JJ; <
;JJ< =
ifKK 
(KK 
userKK 
==KK 
nullKK 
)KK 
{LL 
returnMM 
NotFoundMM 
(MM  
$"MM  ")
Unable to load user with ID 'MM" ?
{MM? @
_userManagerMM@ L
.MML M
	GetUserIdMMM V
(MMV W
UserMMW [
)MM[ \
}MM\ ]
'.MM] _
"MM_ `
)MM` a
;MMa b
}NN 
varPP  
changePasswordResultPP $
=PP% &
awaitPP' ,
_userManagerPP- 9
.PP9 :
ChangePasswordAsyncPP: M
(PPM N
userPPN R
,PPR S
InputPPT Y
.PPY Z
OldPasswordPPZ e
,PPe f
InputPPg l
.PPl m
NewPasswordPPm x
)PPx y
;PPy z
ifQQ 
(QQ 
!QQ  
changePasswordResultQQ %
.QQ% &
	SucceededQQ& /
)QQ/ 0
{RR 
foreachSS 
(SS 
varSS 
errorSS "
inSS# % 
changePasswordResultSS& :
.SS: ;
ErrorsSS; A
)SSA B
{TT 

ModelStateUU 
.UU 
AddModelErrorUU ,
(UU, -
stringUU- 3
.UU3 4
EmptyUU4 9
,UU9 :
errorUU; @
.UU@ A
DescriptionUUA L
)UUL M
;UUM N
}VV 
returnWW 
PageWW 
(WW 
)WW 
;WW 
}XX 
awaitZZ 
_signInManagerZZ  
.ZZ  !
RefreshSignInAsyncZZ! 3
(ZZ3 4
userZZ4 8
)ZZ8 9
;ZZ9 :
_logger[[ 
.[[ 
LogInformation[[ "
([[" #
$str[[# N
)[[N O
;[[O P
StatusMessage\\ 
=\\ 
$str\\ =
;\\= >
return^^ 
RedirectToPage^^ !
(^^! "
)^^" #
;^^# $
}__ 	
}`` 
}aa ˛3
ßE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\Manage\DeletePersonalData.cshtml.cs
	namespace		 	&
Ecommerce_proiect_an4_sem1		
 $
.		$ %
Areas		% *
.		* +
Identity		+ 3
.		3 4
Pages		4 9
.		9 :
Account		: A
.		A B
Manage		B H
{

 
public 

class #
DeletePersonalDataModel (
:) *
	PageModel+ 4
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
ILogger  
<  !#
DeletePersonalDataModel! 8
>8 9
_logger: A
;A B
public #
DeletePersonalDataModel &
(& '
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
,5 6
ILogger 
< #
DeletePersonalDataModel +
>+ ,
logger- 3
)3 4
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
[ 	
BindProperty	 
] 
public 

InputModel 
Input 
{  !
get" %
;% &
set' *
;* +
}, -
public 
class 

InputModel 
{ 	
[   
Required   
]   
[!! 
DataType!! 
(!! 
DataType!! 
.!! 
Password!! '
)!!' (
]!!( )
public"" 
string"" 
Password"" "
{""# $
get""% (
;""( )
set""* -
;""- .
}""/ 0
}## 	
public%% 
bool%% 
RequirePassword%% #
{%%$ %
get%%& )
;%%) *
set%%+ .
;%%. /
}%%0 1
public'' 
async'' 
Task'' 
<'' 
IActionResult'' '
>''' (
OnGet'') .
(''. /
)''/ 0
{(( 	
var)) 
user)) 
=)) 
await)) 
_userManager)) )
.))) *
GetUserAsync))* 6
())6 7
User))7 ;
))); <
;))< =
if** 
(** 
user** 
==** 
null** 
)** 
{++ 
return,, 
NotFound,, 
(,,  
$",,  ")
Unable to load user with ID ',," ?
{,,? @
_userManager,,@ L
.,,L M
	GetUserId,,M V
(,,V W
User,,W [
),,[ \
},,\ ]
'.,,] _
",,_ `
),,` a
;,,a b
}-- 
RequirePassword// 
=// 
await// #
_userManager//$ 0
.//0 1
HasPasswordAsync//1 A
(//A B
user//B F
)//F G
;//G H
return00 
Page00 
(00 
)00 
;00 
}11 	
public33 
async33 
Task33 
<33 
IActionResult33 '
>33' (
OnPostAsync33) 4
(334 5
)335 6
{44 	
var55 
user55 
=55 
await55 
_userManager55 )
.55) *
GetUserAsync55* 6
(556 7
User557 ;
)55; <
;55< =
if66 
(66 
user66 
==66 
null66 
)66 
{77 
return88 
NotFound88 
(88  
$"88  ")
Unable to load user with ID '88" ?
{88? @
_userManager88@ L
.88L M
	GetUserId88M V
(88V W
User88W [
)88[ \
}88\ ]
'.88] _
"88_ `
)88` a
;88a b
}99 
RequirePassword;; 
=;; 
await;; #
_userManager;;$ 0
.;;0 1
HasPasswordAsync;;1 A
(;;A B
user;;B F
);;F G
;;;G H
if<< 
(<< 
RequirePassword<< 
&&<<  "
(<<# $
!<<$ %
await<<% *
_userManager<<+ 7
.<<7 8
CheckPasswordAsync<<8 J
(<<J K
user<<K O
,<<O P
Input<<Q V
.<<V W
Password<<W _
)<<_ `
)<<` a
)<<a b
{== 

ModelState?? 
.?? 
AddModelError?? '
(??' (
string??( .
.??. /
Empty??/ 4
,??4 5
$str??6 M
)??M N
;??N O
return@@ 
Page@@ 
(@@ 
)@@ 
;@@ 
}BB 
varDD 
resultDD 
=DD 
awaitDD 
_userManagerDD +
.DD+ ,
DeleteAsyncDD, 7
(DD7 8
userDD8 <
)DD< =
;DD= >
varEE 
userIdEE 
=EE 
awaitEE 
_userManagerEE +
.EE+ ,
GetUserIdAsyncEE, :
(EE: ;
userEE; ?
)EE? @
;EE@ A
ifFF 
(FF 
!FF 
resultFF 
.FF 
	SucceededFF !
)FF! "
{GG 
throwHH 
newHH %
InvalidOperationExceptionHH 3
(HH3 4
$"HH4 6>
2Unexpected error occurred deleteing user with ID 'HH6 h
{HHh i
userIdHHi o
}HHo p
'.HHp r
"HHr s
)HHs t
;HHt u
}II 
awaitKK 
_signInManagerKK  
.KK  !
SignOutAsyncKK! -
(KK- .
)KK. /
;KK/ 0
_loggerMM 
.MM 
LogInformationMM "
(MM" #
$strMM# P
,MMP Q
userIdMMR X
)MMX Y
;MMY Z
returnOO 
RedirectOO 
(OO 
$strOO  
)OO  !
;OO! "
}PP 	
}QQ 
}RR Û(
üE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\Manage\Disable2fa.cshtml.cs
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
.$ %
Areas% *
.* +
Identity+ 3
.3 4
Pages4 9
.9 :
Account: A
.A B
ManageB H
{		 
public

 

class

 
Disable2faModel

  
:

! "
	PageModel

# ,
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
ILogger  
<  !
Disable2faModel! 0
>0 1
_logger2 9
;9 :
public 
Disable2faModel 
( 
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
ILogger 
< 
Disable2faModel #
># $
logger% +
)+ ,
{ 	
_userManager 
= 
userManager &
;& '
_logger 
= 
logger 
; 
} 	
[ 	
TempData	 
] 
public 
string 
StatusMessage #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
async 
Task 
< 
IActionResult '
>' (
OnGet) .
(. /
)/ 0
{ 	
var 
user 
= 
await 
_userManager )
.) *
GetUserAsync* 6
(6 7
User7 ;
); <
;< =
if 
( 
user 
== 
null 
) 
{ 
return 
NotFound 
(  
$"  ")
Unable to load user with ID '" ?
{? @
_userManager@ L
.L M
	GetUserIdM V
(V W
UserW [
)[ \
}\ ]
'.] _
"_ `
)` a
;a b
}   
if"" 
("" 
!"" 
await"" 
_userManager"" #
.""# $$
GetTwoFactorEnabledAsync""$ <
(""< =
user""= A
)""A B
)""B C
{## 
throw$$ 
new$$ %
InvalidOperationException$$ 3
($$3 4
$"$$4 61
%Cannot disable 2FA for user with ID '$$6 [
{$$[ \
_userManager$$\ h
.$$h i
	GetUserId$$i r
($$r s
User$$s w
)$$w x
}$$x y-
 ' as it's not currently enabled.	$$y ô
"
$$ô ö
)
$$ö õ
;
$$õ ú
}%% 
return'' 
Page'' 
('' 
)'' 
;'' 
}(( 	
public** 
async** 
Task** 
<** 
IActionResult** '
>**' (
OnPostAsync**) 4
(**4 5
)**5 6
{++ 	
var,, 
user,, 
=,, 
await,, 
_userManager,, )
.,,) *
GetUserAsync,,* 6
(,,6 7
User,,7 ;
),,; <
;,,< =
if-- 
(-- 
user-- 
==-- 
null-- 
)-- 
{.. 
return// 
NotFound// 
(//  
$"//  ")
Unable to load user with ID '//" ?
{//? @
_userManager//@ L
.//L M
	GetUserId//M V
(//V W
User//W [
)//[ \
}//\ ]
'.//] _
"//_ `
)//` a
;//a b
}00 
var22 
disable2faResult22  
=22! "
await22# (
_userManager22) 5
.225 6$
SetTwoFactorEnabledAsync226 N
(22N O
user22O S
,22S T
false22U Z
)22Z [
;22[ \
if33 
(33 
!33 
disable2faResult33 !
.33! "
	Succeeded33" +
)33+ ,
{44 
throw55 
new55 %
InvalidOperationException55 3
(553 4
$"554 6F
:Unexpected error occurred disabling 2FA for user with ID '556 p
{55p q
_userManager55q }
.55} ~
	GetUserId	55~ á
(
55á à
User
55à å
)
55å ç
}
55ç é
'.
55é ê
"
55ê ë
)
55ë í
;
55í ì
}66 
_logger88 
.88 
LogInformation88 "
(88" #
$str88# N
,88N O
_userManager88P \
.88\ ]
	GetUserId88] f
(88f g
User88g k
)88k l
)88l m
;88m n
StatusMessage99 
=99 
$str99 m
;99m n
return:: 
RedirectToPage:: !
(::! "
$str::" =
)::= >
;::> ?
};; 	
}<< 
}== Ø"
©E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\Manage\DownloadPersonalData.cshtml.cs
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
.$ %
Areas% *
.* +
Identity+ 3
.3 4
Pages4 9
.9 :
Account: A
.A B
ManageB H
{ 
public 

class %
DownloadPersonalDataModel *
:+ ,
	PageModel- 6
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
ILogger  
<  !%
DownloadPersonalDataModel! :
>: ;
_logger< C
;C D
public %
DownloadPersonalDataModel (
(( )
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
ILogger 
< %
DownloadPersonalDataModel -
>- .
logger/ 5
)5 6
{ 	
_userManager 
= 
userManager &
;& '
_logger 
= 
logger 
; 
} 	
public 
async 
Task 
< 
IActionResult '
>' (
OnPostAsync) 4
(4 5
)5 6
{ 	
var 
user 
= 
await 
_userManager )
.) *
GetUserAsync* 6
(6 7
User7 ;
); <
;< =
if 
( 
user 
== 
null 
) 
{ 
return   
NotFound   
(    
$"    ")
Unable to load user with ID '  " ?
{  ? @
_userManager  @ L
.  L M
	GetUserId  M V
(  V W
User  W [
)  [ \
}  \ ]
'.  ] _
"  _ `
)  ` a
;  a b
}!! 
_logger## 
.## 
LogInformation## "
(##" #
$str### [
,##[ \
_userManager##] i
.##i j
	GetUserId##j s
(##s t
User##t x
)##x y
)##y z
;##z {
var&& 
personalData&& 
=&& 
new&& "

Dictionary&&# -
<&&- .
string&&. 4
,&&4 5
string&&6 <
>&&< =
(&&= >
)&&> ?
;&&? @
var'' 
personalDataProps'' !
=''" #
typeof''$ *
(''* +
IdentityUser''+ 7
)''7 8
.''8 9
GetProperties''9 F
(''F G
)''G H
.''H I
Where''I N
(''N O
prop((  
=>((! #
	Attribute(($ -
.((- .
	IsDefined((. 7
(((7 8
prop((8 <
,((< =
typeof((> D
(((D E!
PersonalDataAttribute((E Z
)((Z [
)(([ \
)((\ ]
;((] ^
foreach)) 
()) 
var)) 
p)) 
in)) 
personalDataProps)) /
)))/ 0
{** 
personalData++ 
.++ 
Add++  
(++  !
p++! "
.++" #
Name++# '
,++' (
p++) *
.++* +
GetValue+++ 3
(++3 4
user++4 8
)++8 9
?++9 :
.++: ;
ToString++; C
(++C D
)++D E
??++F H
$str++I O
)++O P
;++P Q
},, 
Response.. 
... 
Headers.. 
... 
Add..  
(..  !
$str..! 6
,..6 7
$str..8 `
)..` a
;..a b
return// 
new// 
FileContentResult// (
(//( )
Encoding//) 1
.//1 2
UTF8//2 6
.//6 7
GetBytes//7 ?
(//? @
JsonConvert//@ K
.//K L
SerializeObject//L [
(//[ \
personalData//\ h
)//h i
)//i j
,//j k
$str//l w
)//w x
;//x y
}00 	
}11 
}22 Ÿd
®E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\Manage\EnableAuthenticator.cshtml.cs
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
.$ %
Areas% *
.* +
Identity+ 3
.3 4
Pages4 9
.9 :
Account: A
.A B
ManageB H
{ 
public 

class $
EnableAuthenticatorModel )
:* +
	PageModel, 5
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
ILogger  
<  !$
EnableAuthenticatorModel! 9
>9 :
_logger; B
;B C
private 
readonly 

UrlEncoder #
_urlEncoder$ /
;/ 0
private 
const 
string "
AuthenticatorUriFormat 3
=4 5
$str6 m
;m n
public $
EnableAuthenticatorModel '
(' (
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
ILogger 
< $
EnableAuthenticatorModel ,
>, -
logger. 4
,4 5

UrlEncoder 

urlEncoder !
)! "
{ 	
_userManager 
= 
userManager &
;& '
_logger 
= 
logger 
; 
_urlEncoder 
= 

urlEncoder $
;$ %
} 	
public 
string 
	SharedKey 
{  !
get" %
;% &
set' *
;* +
}, -
public!! 
string!! 
AuthenticatorUri!! &
{!!' (
get!!) ,
;!!, -
set!!. 1
;!!1 2
}!!3 4
[## 	
TempData##	 
]## 
public$$ 
string$$ 
[$$ 
]$$ 
RecoveryCodes$$ %
{$$& '
get$$( +
;$$+ ,
set$$- 0
;$$0 1
}$$2 3
[&& 	
TempData&&	 
]&& 
public'' 
string'' 
StatusMessage'' #
{''$ %
get''& )
;'') *
set''+ .
;''. /
}''0 1
[)) 	
BindProperty))	 
])) 
public** 

InputModel** 
Input** 
{**  !
get**" %
;**% &
set**' *
;*** +
}**, -
public,, 
class,, 

InputModel,, 
{-- 	
[.. 
Required.. 
].. 
[// 
StringLength// 
(// 
$num// 
,// 
ErrorMessage// )
=//* +
$str//, j
,//j k
MinimumLength//l y
=//z {
$num//| }
)//} ~
]//~ 
[00 
DataType00 
(00 
DataType00 
.00 
Text00 #
)00# $
]00$ %
[11 
Display11 
(11 
Name11 
=11 
$str11 /
)11/ 0
]110 1
public22 
string22 
Code22 
{22  
get22! $
;22$ %
set22& )
;22) *
}22+ ,
}33 	
public55 
async55 
Task55 
<55 
IActionResult55 '
>55' (

OnGetAsync55) 3
(553 4
)554 5
{66 	
var77 
user77 
=77 
await77 
_userManager77 )
.77) *
GetUserAsync77* 6
(776 7
User777 ;
)77; <
;77< =
if88 
(88 
user88 
==88 
null88 
)88 
{99 
return:: 
NotFound:: 
(::  
$"::  ")
Unable to load user with ID '::" ?
{::? @
_userManager::@ L
.::L M
	GetUserId::M V
(::V W
User::W [
)::[ \
}::\ ]
'.::] _
"::_ `
)::` a
;::a b
};; 
await== *
LoadSharedKeyAndQrCodeUriAsync== 0
(==0 1
user==1 5
)==5 6
;==6 7
return?? 
Page?? 
(?? 
)?? 
;?? 
}@@ 	
publicBB 
asyncBB 
TaskBB 
<BB 
IActionResultBB '
>BB' (
OnPostAsyncBB) 4
(BB4 5
)BB5 6
{CC 	
varDD 
userDD 
=DD 
awaitDD 
_userManagerDD )
.DD) *
GetUserAsyncDD* 6
(DD6 7
UserDD7 ;
)DD; <
;DD< =
ifEE 
(EE 
userEE 
==EE 
nullEE 
)EE 
{FF 
returnGG 
NotFoundGG 
(GG  
$"GG  ")
Unable to load user with ID 'GG" ?
{GG? @
_userManagerGG@ L
.GGL M
	GetUserIdGGM V
(GGV W
UserGGW [
)GG[ \
}GG\ ]
'.GG] _
"GG_ `
)GG` a
;GGa b
}HH 
ifJJ 
(JJ 
!JJ 

ModelStateJJ 
.JJ 
IsValidJJ #
)JJ# $
{KK 
awaitLL *
LoadSharedKeyAndQrCodeUriAsyncLL 4
(LL4 5
userLL5 9
)LL9 :
;LL: ;
returnMM 
PageMM 
(MM 
)MM 
;MM 
}NN 
varQQ 
verificationCodeQQ  
=QQ! "
InputQQ# (
.QQ( )
CodeQQ) -
.QQ- .
ReplaceQQ. 5
(QQ5 6
$strQQ6 9
,QQ9 :
stringQQ; A
.QQA B
EmptyQQB G
)QQG H
.QQH I
ReplaceQQI P
(QQP Q
$strQQQ T
,QQT U
stringQQV \
.QQ\ ]
EmptyQQ] b
)QQb c
;QQc d
varSS 
is2faTokenValidSS 
=SS  !
awaitSS" '
_userManagerSS( 4
.SS4 5%
VerifyTwoFactorTokenAsyncSS5 N
(SSN O
userTT 
,TT 
_userManagerTT "
.TT" #
OptionsTT# *
.TT* +
TokensTT+ 1
.TT1 2&
AuthenticatorTokenProviderTT2 L
,TTL M
verificationCodeTTN ^
)TT^ _
;TT_ `
ifVV 
(VV 
!VV 
is2faTokenValidVV  
)VV  !
{WW 

ModelStateXX 
.XX 
AddModelErrorXX (
(XX( )
$strXX) 5
,XX5 6
$strXX7 V
)XXV W
;XXW X
awaitYY *
LoadSharedKeyAndQrCodeUriAsyncYY 4
(YY4 5
userYY5 9
)YY9 :
;YY: ;
returnZZ 
PageZZ 
(ZZ 
)ZZ 
;ZZ 
}[[ 
await]] 
_userManager]] 
.]] $
SetTwoFactorEnabledAsync]] 7
(]]7 8
user]]8 <
,]]< =
true]]> B
)]]B C
;]]C D
var^^ 
userId^^ 
=^^ 
await^^ 
_userManager^^ +
.^^+ ,
GetUserIdAsync^^, :
(^^: ;
user^^; ?
)^^? @
;^^@ A
_logger__ 
.__ 
LogInformation__ "
(__" #
$str__# g
,__g h
userId__i o
)__o p
;__p q
StatusMessageaa 
=aa 
$straa G
;aaG H
ifcc 
(cc 
awaitcc 
_userManagercc "
.cc" ##
CountRecoveryCodesAsynccc# :
(cc: ;
usercc; ?
)cc? @
==ccA C
$numccD E
)ccE F
{dd 
varee 
recoveryCodesee !
=ee" #
awaitee$ )
_userManageree* 6
.ee6 72
&GenerateNewTwoFactorRecoveryCodesAsyncee7 ]
(ee] ^
useree^ b
,eeb c
$numeed f
)eef g
;eeg h
RecoveryCodesff 
=ff 
recoveryCodesff  -
.ff- .
ToArrayff. 5
(ff5 6
)ff6 7
;ff7 8
returngg 
RedirectToPagegg %
(gg% &
$strgg& ;
)gg; <
;gg< =
}hh 
elseii 
{jj 
returnkk 
RedirectToPagekk %
(kk% &
$strkk& A
)kkA B
;kkB C
}ll 
}mm 	
privateoo 
asyncoo 
Taskoo *
LoadSharedKeyAndQrCodeUriAsyncoo 9
(oo9 :
IdentityUseroo: F
userooG K
)ooK L
{pp 	
varrr 
unformattedKeyrr 
=rr  
awaitrr! &
_userManagerrr' 3
.rr3 4$
GetAuthenticatorKeyAsyncrr4 L
(rrL M
userrrM Q
)rrQ R
;rrR S
ifss 
(ss 
stringss 
.ss 
IsNullOrEmptyss $
(ss$ %
unformattedKeyss% 3
)ss3 4
)ss4 5
{tt 
awaituu 
_userManageruu "
.uu" #&
ResetAuthenticatorKeyAsyncuu# =
(uu= >
useruu> B
)uuB C
;uuC D
unformattedKeyvv 
=vv  
awaitvv! &
_userManagervv' 3
.vv3 4$
GetAuthenticatorKeyAsyncvv4 L
(vvL M
uservvM Q
)vvQ R
;vvR S
}ww 
	SharedKeyyy 
=yy 
	FormatKeyyy !
(yy! "
unformattedKeyyy" 0
)yy0 1
;yy1 2
var{{ 
email{{ 
={{ 
await{{ 
_userManager{{ *
.{{* +
GetEmailAsync{{+ 8
({{8 9
user{{9 =
){{= >
;{{> ?
AuthenticatorUri|| 
=|| 
GenerateQrCodeUri|| 0
(||0 1
email||1 6
,||6 7
unformattedKey||8 F
)||F G
;||G H
}}} 	
private 
string 
	FormatKey  
(  !
string! '
unformattedKey( 6
)6 7
{
ÄÄ 	
var
ÅÅ 
result
ÅÅ 
=
ÅÅ 
new
ÅÅ 
StringBuilder
ÅÅ *
(
ÅÅ* +
)
ÅÅ+ ,
;
ÅÅ, -
int
ÇÇ 
currentPosition
ÇÇ 
=
ÇÇ  !
$num
ÇÇ" #
;
ÇÇ# $
while
ÉÉ 
(
ÉÉ 
currentPosition
ÉÉ "
+
ÉÉ# $
$num
ÉÉ% &
<
ÉÉ' (
unformattedKey
ÉÉ) 7
.
ÉÉ7 8
Length
ÉÉ8 >
)
ÉÉ> ?
{
ÑÑ 
result
ÖÖ 
.
ÖÖ 
Append
ÖÖ 
(
ÖÖ 
unformattedKey
ÖÖ ,
.
ÖÖ, -
	Substring
ÖÖ- 6
(
ÖÖ6 7
currentPosition
ÖÖ7 F
,
ÖÖF G
$num
ÖÖH I
)
ÖÖI J
)
ÖÖJ K
.
ÖÖK L
Append
ÖÖL R
(
ÖÖR S
$str
ÖÖS V
)
ÖÖV W
;
ÖÖW X
currentPosition
ÜÜ 
+=
ÜÜ  "
$num
ÜÜ# $
;
ÜÜ$ %
}
áá 
if
àà 
(
àà 
currentPosition
àà 
<
àà  !
unformattedKey
àà" 0
.
àà0 1
Length
àà1 7
)
àà7 8
{
ââ 
result
ää 
.
ää 
Append
ää 
(
ää 
unformattedKey
ää ,
.
ää, -
	Substring
ää- 6
(
ää6 7
currentPosition
ää7 F
)
ääF G
)
ääG H
;
ääH I
}
ãã 
return
çç 
result
çç 
.
çç 
ToString
çç "
(
çç" #
)
çç# $
.
çç$ %
ToLowerInvariant
çç% 5
(
çç5 6
)
çç6 7
;
çç7 8
}
éé 	
private
êê 
string
êê 
GenerateQrCodeUri
êê (
(
êê( )
string
êê) /
email
êê0 5
,
êê5 6
string
êê7 =
unformattedKey
êê> L
)
êêL M
{
ëë 	
return
íí 
string
íí 
.
íí 
Format
íí  
(
íí  !$
AuthenticatorUriFormat
ìì &
,
ìì& '
_urlEncoder
îî 
.
îî 
Encode
îî "
(
îî" #
$str
îî# ?
)
îî? @
,
îî@ A
_urlEncoder
ïï 
.
ïï 
Encode
ïï "
(
ïï" #
email
ïï# (
)
ïï( )
,
ïï) *
unformattedKey
ññ 
)
ññ 
;
ññ  
}
óó 	
}
òò 
}ôô ëR
£E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\Manage\ExternalLogins.cshtml.cs
	namespace

 	&
Ecommerce_proiect_an4_sem1


 $
.

$ %
Areas

% *
.

* +
Identity

+ 3
.

3 4
Pages

4 9
.

9 :
Account

: A
.

A B
Manage

B H
{ 
public 

class 
ExternalLoginsModel $
:% &
	PageModel' 0
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
public 
ExternalLoginsModel "
(" #
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
)5 6
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
} 	
public 
IList 
< 
UserLoginInfo "
>" #
CurrentLogins$ 1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
public 
IList 
<  
AuthenticationScheme )
>) *
OtherLogins+ 6
{7 8
get9 <
;< =
set> A
;A B
}C D
public 
bool 
ShowRemoveButton $
{% &
get' *
;* +
set, /
;/ 0
}1 2
[ 	
TempData	 
] 
public   
string   
StatusMessage   #
{  $ %
get  & )
;  ) *
set  + .
;  . /
}  0 1
public"" 
async"" 
Task"" 
<"" 
IActionResult"" '
>""' (

OnGetAsync"") 3
(""3 4
)""4 5
{## 	
var$$ 
user$$ 
=$$ 
await$$ 
_userManager$$ )
.$$) *
GetUserAsync$$* 6
($$6 7
User$$7 ;
)$$; <
;$$< =
if%% 
(%% 
user%% 
==%% 
null%% 
)%% 
{&& 
return'' 
NotFound'' 
(''  
$"''  ")
Unable to load user with ID '''" ?
{''? @
_userManager''@ L
.''L M
	GetUserId''M V
(''V W
User''W [
)''[ \
}''\ ]
'.''] _
"''_ `
)''` a
;''a b
}(( 
CurrentLogins** 
=** 
await** !
_userManager**" .
.**. /
GetLoginsAsync**/ =
(**= >
user**> B
)**B C
;**C D
OtherLogins++ 
=++ 
(++ 
await++  
_signInManager++! /
.++/ 01
%GetExternalAuthenticationSchemesAsync++0 U
(++U V
)++V W
)++W X
.,, 
Where,, 
(,, 
auth,, 
=>,, 
CurrentLogins,, ,
.,,, -
All,,- 0
(,,0 1
ul,,1 3
=>,,4 6
auth,,7 ;
.,,; <
Name,,< @
!=,,A C
ul,,D F
.,,F G
LoginProvider,,G T
),,T U
),,U V
.-- 
ToList-- 
(-- 
)-- 
;-- 
ShowRemoveButton.. 
=.. 
user.. #
...# $
PasswordHash..$ 0
!=..1 3
null..4 8
||..9 ;
CurrentLogins..< I
...I J
Count..J O
>..P Q
$num..R S
;..S T
return// 
Page// 
(// 
)// 
;// 
}00 	
public22 
async22 
Task22 
<22 
IActionResult22 '
>22' ("
OnPostRemoveLoginAsync22) ?
(22? @
string22@ F
loginProvider22G T
,22T U
string22V \
providerKey22] h
)22h i
{33 	
var44 
user44 
=44 
await44 
_userManager44 )
.44) *
GetUserAsync44* 6
(446 7
User447 ;
)44; <
;44< =
if55 
(55 
user55 
==55 
null55 
)55 
{66 
return77 
NotFound77 
(77  
$"77  ")
Unable to load user with ID '77" ?
{77? @
_userManager77@ L
.77L M
	GetUserId77M V
(77V W
User77W [
)77[ \
}77\ ]
'.77] _
"77_ `
)77` a
;77a b
}88 
var:: 
result:: 
=:: 
await:: 
_userManager:: +
.::+ ,
RemoveLoginAsync::, <
(::< =
user::= A
,::A B
loginProvider::C P
,::P Q
providerKey::R ]
)::] ^
;::^ _
if;; 
(;; 
!;; 
result;; 
.;; 
	Succeeded;; !
);;! "
{<< 
var== 
userId== 
=== 
await== "
_userManager==# /
.==/ 0
GetUserIdAsync==0 >
(==> ?
user==? C
)==C D
;==D E
throw>> 
new>> %
InvalidOperationException>> 3
(>>3 4
$">>4 6P
DUnexpected error occurred removing external login for user with ID '>>6 z
{>>z {
userId	>>{ Å
}
>>Å Ç
'.
>>Ç Ñ
"
>>Ñ Ö
)
>>Ö Ü
;
>>Ü á
}?? 
awaitAA 
_signInManagerAA  
.AA  !
RefreshSignInAsyncAA! 3
(AA3 4
userAA4 8
)AA8 9
;AA9 :
StatusMessageBB 
=BB 
$strBB =
;BB= >
returnCC 
RedirectToPageCC !
(CC! "
)CC" #
;CC# $
}DD 	
publicFF 
asyncFF 
TaskFF 
<FF 
IActionResultFF '
>FF' ( 
OnPostLinkLoginAsyncFF) =
(FF= >
stringFF> D
providerFFE M
)FFM N
{GG 	
awaitII 
HttpContextII 
.II 
SignOutAsyncII *
(II* +
IdentityConstantsII+ <
.II< =
ExternalSchemeII= K
)IIK L
;IIL M
varLL 
redirectUrlLL 
=LL 
UrlLL !
.LL! "
PageLL" &
(LL& '
$strLL' 9
,LL9 :
pageHandlerLL; F
:LLF G
$strLLH [
)LL[ \
;LL\ ]
varMM 

propertiesMM 
=MM 
_signInManagerMM +
.MM+ ,5
)ConfigureExternalAuthenticationPropertiesMM, U
(MMU V
providerMMV ^
,MM^ _
redirectUrlMM` k
,MMk l
_userManagerMMm y
.MMy z
	GetUserId	MMz É
(
MMÉ Ñ
User
MMÑ à
)
MMà â
)
MMâ ä
;
MMä ã
returnNN 
newNN 
ChallengeResultNN &
(NN& '
providerNN' /
,NN/ 0

propertiesNN1 ;
)NN; <
;NN< =
}OO 	
publicQQ 
asyncQQ 
TaskQQ 
<QQ 
IActionResultQQ '
>QQ' ('
OnGetLinkLoginCallbackAsyncQQ) D
(QQD E
)QQE F
{RR 	
varSS 
userSS 
=SS 
awaitSS 
_userManagerSS )
.SS) *
GetUserAsyncSS* 6
(SS6 7
UserSS7 ;
)SS; <
;SS< =
ifTT 
(TT 
userTT 
==TT 
nullTT 
)TT 
{UU 
returnVV 
NotFoundVV 
(VV  
$"VV  ")
Unable to load user with ID 'VV" ?
{VV? @
_userManagerVV@ L
.VVL M
	GetUserIdVVM V
(VVV W
UserVVW [
)VV[ \
}VV\ ]
'.VV] _
"VV_ `
)VV` a
;VVa b
}WW 
varYY 
infoYY 
=YY 
awaitYY 
_signInManagerYY +
.YY+ ,%
GetExternalLoginInfoAsyncYY, E
(YYE F
awaitYYF K
_userManagerYYL X
.YYX Y
GetUserIdAsyncYYY g
(YYg h
userYYh l
)YYl m
)YYm n
;YYn o
ifZZ 
(ZZ 
infoZZ 
==ZZ 
nullZZ 
)ZZ 
{[[ 
throw\\ 
new\\ %
InvalidOperationException\\ 3
(\\3 4
$"\\4 6T
HUnexpected error occurred loading external login info for user with ID '\\6 ~
{\\~ 
user	\\ É
.
\\É Ñ
Id
\\Ñ Ü
}
\\Ü á
'.
\\á â
"
\\â ä
)
\\ä ã
;
\\ã å
}]] 
var__ 
result__ 
=__ 
await__ 
_userManager__ +
.__+ ,
AddLoginAsync__, 9
(__9 :
user__: >
,__> ?
info__@ D
)__D E
;__E F
if`` 
(`` 
!`` 
result`` 
.`` 
	Succeeded`` !
)``! "
{aa 
throwbb 
newbb %
InvalidOperationExceptionbb 3
(bb3 4
$"bb4 6N
BUnexpected error occurred adding external login for user with ID 'bb6 x
{bbx y
userbby }
.bb} ~
Id	bb~ Ä
}
bbÄ Å
'.
bbÅ É
"
bbÉ Ñ
)
bbÑ Ö
;
bbÖ Ü
}cc 
awaitff 
HttpContextff 
.ff 
SignOutAsyncff *
(ff* +
IdentityConstantsff+ <
.ff< =
ExternalSchemeff= K
)ffK L
;ffL M
StatusMessagehh 
=hh 
$strhh ;
;hh; <
returnii 
RedirectToPageii !
(ii! "
)ii" #
;ii# $
}jj 	
}kk 
}ll ê0
™E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\Manage\GenerateRecoveryCodes.cshtml.cs
	namespace

 	&
Ecommerce_proiect_an4_sem1


 $
.

$ %
Areas

% *
.

* +
Identity

+ 3
.

3 4
Pages

4 9
.

9 :
Account

: A
.

A B
Manage

B H
{ 
public 

class &
GenerateRecoveryCodesModel +
:, -
	PageModel. 7
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
ILogger  
<  !&
GenerateRecoveryCodesModel! ;
>; <
_logger= D
;D E
public &
GenerateRecoveryCodesModel )
() *
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
ILogger 
< &
GenerateRecoveryCodesModel .
>. /
logger0 6
)6 7
{ 	
_userManager 
= 
userManager &
;& '
_logger 
= 
logger 
; 
} 	
[ 	
TempData	 
] 
public 
string 
[ 
] 
RecoveryCodes %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
[ 	
TempData	 
] 
public 
string 
StatusMessage #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
async 
Task 
< 
IActionResult '
>' (

OnGetAsync) 3
(3 4
)4 5
{   	
var!! 
user!! 
=!! 
await!! 
_userManager!! )
.!!) *
GetUserAsync!!* 6
(!!6 7
User!!7 ;
)!!; <
;!!< =
if"" 
("" 
user"" 
=="" 
null"" 
)"" 
{## 
return$$ 
NotFound$$ 
($$  
$"$$  ")
Unable to load user with ID '$$" ?
{$$? @
_userManager$$@ L
.$$L M
	GetUserId$$M V
($$V W
User$$W [
)$$[ \
}$$\ ]
'.$$] _
"$$_ `
)$$` a
;$$a b
}%% 
var'' 
isTwoFactorEnabled'' "
=''# $
await''% *
_userManager''+ 7
.''7 8$
GetTwoFactorEnabledAsync''8 P
(''P Q
user''Q U
)''U V
;''V W
if(( 
((( 
!(( 
isTwoFactorEnabled(( #
)((# $
{)) 
var** 
userId** 
=** 
await** "
_userManager**# /
.**/ 0
GetUserIdAsync**0 >
(**> ?
user**? C
)**C D
;**D E
throw++ 
new++ %
InvalidOperationException++ 3
(++3 4
$"++4 6=
1Cannot generate recovery codes for user with ID '++6 g
{++g h
userId++h n
}++n o4
'' because they do not have 2FA enabled.	++o ñ
"
++ñ ó
)
++ó ò
;
++ò ô
},, 
return.. 
Page.. 
(.. 
).. 
;.. 
}// 	
public11 
async11 
Task11 
<11 
IActionResult11 '
>11' (
OnPostAsync11) 4
(114 5
)115 6
{22 	
var33 
user33 
=33 
await33 
_userManager33 )
.33) *
GetUserAsync33* 6
(336 7
User337 ;
)33; <
;33< =
if44 
(44 
user44 
==44 
null44 
)44 
{55 
return66 
NotFound66 
(66  
$"66  ")
Unable to load user with ID '66" ?
{66? @
_userManager66@ L
.66L M
	GetUserId66M V
(66V W
User66W [
)66[ \
}66\ ]
'.66] _
"66_ `
)66` a
;66a b
}77 
var99 
isTwoFactorEnabled99 "
=99# $
await99% *
_userManager99+ 7
.997 8$
GetTwoFactorEnabledAsync998 P
(99P Q
user99Q U
)99U V
;99V W
var:: 
userId:: 
=:: 
await:: 
_userManager:: +
.::+ ,
GetUserIdAsync::, :
(::: ;
user::; ?
)::? @
;::@ A
if;; 
(;; 
!;; 
isTwoFactorEnabled;; #
);;# $
{<< 
throw== 
new== %
InvalidOperationException== 3
(==3 4
$"==4 6=
1Cannot generate recovery codes for user with ID '==6 g
{==g h
userId==h n
}==n o/
"' as they do not have 2FA enabled.	==o ë
"
==ë í
)
==í ì
;
==ì î
}>> 
var@@ 
recoveryCodes@@ 
=@@ 
await@@  %
_userManager@@& 2
.@@2 32
&GenerateNewTwoFactorRecoveryCodesAsync@@3 Y
(@@Y Z
user@@Z ^
,@@^ _
$num@@` b
)@@b c
;@@c d
RecoveryCodesAA 
=AA 
recoveryCodesAA )
.AA) *
ToArrayAA* 1
(AA1 2
)AA2 3
;AA3 4
_loggerCC 
.CC 
LogInformationCC "
(CC" #
$strCC# b
,CCb c
userIdCCd j
)CCj k
;CCk l
StatusMessageDD 
=DD 
$strDD D
;DDD E
returnEE 
RedirectToPageEE !
(EE! "
$strEE" 7
)EE7 8
;EE8 9
}FF 	
}GG 
}HH Í`
öE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\Manage\Index.cshtml.cs
	namespace

 	&
Ecommerce_proiect_an4_sem1


 $
.

$ %
Areas

% *
.

* +
Identity

+ 3
.

3 4
Pages

4 9
.

9 :
Account

: A
.

A B
Manage

B H
{ 
public 

partial 
class 

IndexModel #
:$ %
	PageModel& /
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
IEmailSender %
_emailSender& 2
;2 3
public 

IndexModel 
( 
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
,5 6
IEmailSender 
emailSender $
)$ %
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
_emailSender 
= 
emailSender &
;& '
} 	
public 
string 
Username 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
bool 
IsEmailConfirmed $
{% &
get' *
;* +
set, /
;/ 0
}1 2
[   	
TempData  	 
]   
public!! 
string!! 
StatusMessage!! #
{!!$ %
get!!& )
;!!) *
set!!+ .
;!!. /
}!!0 1
[## 	
BindProperty##	 
]## 
public$$ 

InputModel$$ 
Input$$ 
{$$  !
get$$" %
;$$% &
set$$' *
;$$* +
}$$, -
public&& 
class&& 

InputModel&& 
{'' 	
[(( 
Required(( 
](( 
[)) 
EmailAddress)) 
])) 
public** 
string** 
Email** 
{**  !
get**" %
;**% &
set**' *
;*** +
}**, -
[,, 
Phone,, 
],, 
[-- 
Display-- 
(-- 
Name-- 
=-- 
$str-- *
)--* +
]--+ ,
public.. 
string.. 
PhoneNumber.. %
{..& '
get..( +
;..+ ,
set..- 0
;..0 1
}..2 3
}// 	
public11 
async11 
Task11 
<11 
IActionResult11 '
>11' (

OnGetAsync11) 3
(113 4
)114 5
{22 	
var33 
user33 
=33 
await33 
_userManager33 )
.33) *
GetUserAsync33* 6
(336 7
User337 ;
)33; <
;33< =
if44 
(44 
user44 
==44 
null44 
)44 
{55 
return66 
NotFound66 
(66  
$"66  ")
Unable to load user with ID '66" ?
{66? @
_userManager66@ L
.66L M
	GetUserId66M V
(66V W
User66W [
)66[ \
}66\ ]
'.66] _
"66_ `
)66` a
;66a b
}77 
var99 
userName99 
=99 
await99  
_userManager99! -
.99- .
GetUserNameAsync99. >
(99> ?
user99? C
)99C D
;99D E
var:: 
email:: 
=:: 
await:: 
_userManager:: *
.::* +
GetEmailAsync::+ 8
(::8 9
user::9 =
)::= >
;::> ?
var;; 
phoneNumber;; 
=;; 
await;; #
_userManager;;$ 0
.;;0 1
GetPhoneNumberAsync;;1 D
(;;D E
user;;E I
);;I J
;;;J K
Username== 
=== 
userName== 
;==  
Input?? 
=?? 
new?? 

InputModel?? "
{@@ 
EmailAA 
=AA 
emailAA 
,AA 
PhoneNumberBB 
=BB 
phoneNumberBB )
}CC 
;CC 
IsEmailConfirmedEE 
=EE 
awaitEE $
_userManagerEE% 1
.EE1 2!
IsEmailConfirmedAsyncEE2 G
(EEG H
userEEH L
)EEL M
;EEM N
returnGG 
PageGG 
(GG 
)GG 
;GG 
}HH 	
publicJJ 
asyncJJ 
TaskJJ 
<JJ 
IActionResultJJ '
>JJ' (
OnPostAsyncJJ) 4
(JJ4 5
)JJ5 6
{KK 	
ifLL 
(LL 
!LL 

ModelStateLL 
.LL 
IsValidLL #
)LL# $
{MM 
returnNN 
PageNN 
(NN 
)NN 
;NN 
}OO 
varQQ 
userQQ 
=QQ 
awaitQQ 
_userManagerQQ )
.QQ) *
GetUserAsyncQQ* 6
(QQ6 7
UserQQ7 ;
)QQ; <
;QQ< =
ifRR 
(RR 
userRR 
==RR 
nullRR 
)RR 
{SS 
returnTT 
NotFoundTT 
(TT  
$"TT  ")
Unable to load user with ID 'TT" ?
{TT? @
_userManagerTT@ L
.TTL M
	GetUserIdTTM V
(TTV W
UserTTW [
)TT[ \
}TT\ ]
'.TT] _
"TT_ `
)TT` a
;TTa b
}UU 
varWW 
emailWW 
=WW 
awaitWW 
_userManagerWW *
.WW* +
GetEmailAsyncWW+ 8
(WW8 9
userWW9 =
)WW= >
;WW> ?
ifXX 
(XX 
InputXX 
.XX 
EmailXX 
!=XX 
emailXX $
)XX$ %
{YY 
varZZ 
setEmailResultZZ "
=ZZ# $
awaitZZ% *
_userManagerZZ+ 7
.ZZ7 8
SetEmailAsyncZZ8 E
(ZZE F
userZZF J
,ZZJ K
InputZZL Q
.ZZQ R
EmailZZR W
)ZZW X
;ZZX Y
if[[ 
([[ 
![[ 
setEmailResult[[ #
.[[# $
	Succeeded[[$ -
)[[- .
{\\ 
var]] 
userId]] 
=]]  
await]]! &
_userManager]]' 3
.]]3 4
GetUserIdAsync]]4 B
(]]B C
user]]C G
)]]G H
;]]H I
throw^^ 
new^^ %
InvalidOperationException^^ 7
(^^7 8
$"^^8 :F
:Unexpected error occurred setting email for user with ID '^^: t
{^^t u
userId^^u {
}^^{ |
'.^^| ~
"^^~ 
)	^^ Ä
;
^^Ä Å
}__ 
}`` 
varbb 
phoneNumberbb 
=bb 
awaitbb #
_userManagerbb$ 0
.bb0 1
GetPhoneNumberAsyncbb1 D
(bbD E
userbbE I
)bbI J
;bbJ K
ifcc 
(cc 
Inputcc 
.cc 
PhoneNumbercc !
!=cc" $
phoneNumbercc% 0
)cc0 1
{dd 
varee 
setPhoneResultee "
=ee# $
awaitee% *
_userManageree+ 7
.ee7 8
SetPhoneNumberAsyncee8 K
(eeK L
usereeL P
,eeP Q
InputeeR W
.eeW X
PhoneNumbereeX c
)eec d
;eed e
ifff 
(ff 
!ff 
setPhoneResultff #
.ff# $
	Succeededff$ -
)ff- .
{gg 
varhh 
userIdhh 
=hh  
awaithh! &
_userManagerhh' 3
.hh3 4
GetUserIdAsynchh4 B
(hhB C
userhhC G
)hhG H
;hhH I
throwii 
newii %
InvalidOperationExceptionii 7
(ii7 8
$"ii8 :M
AUnexpected error occurred setting phone number for user with ID 'ii: {
{ii{ |
userId	ii| Ç
}
iiÇ É
'.
iiÉ Ö
"
iiÖ Ü
)
iiÜ á
;
iiá à
}jj 
}kk 
awaitmm 
_signInManagermm  
.mm  !
RefreshSignInAsyncmm! 3
(mm3 4
usermm4 8
)mm8 9
;mm9 :
StatusMessagenn 
=nn 
$strnn ;
;nn; <
returnoo 
RedirectToPageoo !
(oo! "
)oo" #
;oo# $
}pp 	
publicrr 
asyncrr 
Taskrr 
<rr 
IActionResultrr '
>rr' (,
 OnPostSendVerificationEmailAsyncrr) I
(rrI J
)rrJ K
{ss 	
iftt 
(tt 
!tt 

ModelStatett 
.tt 
IsValidtt #
)tt# $
{uu 
returnvv 
Pagevv 
(vv 
)vv 
;vv 
}ww 
varyy 
useryy 
=yy 
awaityy 
_userManageryy )
.yy) *
GetUserAsyncyy* 6
(yy6 7
Useryy7 ;
)yy; <
;yy< =
ifzz 
(zz 
userzz 
==zz 
nullzz 
)zz 
{{{ 
return|| 
NotFound|| 
(||  
$"||  ")
Unable to load user with ID '||" ?
{||? @
_userManager||@ L
.||L M
	GetUserId||M V
(||V W
User||W [
)||[ \
}||\ ]
'.||] _
"||_ `
)||` a
;||a b
}}} 
var
ÄÄ 
userId
ÄÄ 
=
ÄÄ 
await
ÄÄ 
_userManager
ÄÄ +
.
ÄÄ+ ,
GetUserIdAsync
ÄÄ, :
(
ÄÄ: ;
user
ÄÄ; ?
)
ÄÄ? @
;
ÄÄ@ A
var
ÅÅ 
email
ÅÅ 
=
ÅÅ 
await
ÅÅ 
_userManager
ÅÅ *
.
ÅÅ* +
GetEmailAsync
ÅÅ+ 8
(
ÅÅ8 9
user
ÅÅ9 =
)
ÅÅ= >
;
ÅÅ> ?
var
ÇÇ 
code
ÇÇ 
=
ÇÇ 
await
ÇÇ 
_userManager
ÇÇ )
.
ÇÇ) *1
#GenerateEmailConfirmationTokenAsync
ÇÇ* M
(
ÇÇM N
user
ÇÇN R
)
ÇÇR S
;
ÇÇS T
var
ÉÉ 
callbackUrl
ÉÉ 
=
ÉÉ 
Url
ÉÉ !
.
ÉÉ! "
Page
ÉÉ" &
(
ÉÉ& '
$str
ÑÑ '
,
ÑÑ' (
pageHandler
ÖÖ 
:
ÖÖ 
null
ÖÖ !
,
ÖÖ! "
values
ÜÜ 
:
ÜÜ 
new
ÜÜ 
{
ÜÜ 
userId
ÜÜ $
=
ÜÜ% &
userId
ÜÜ' -
,
ÜÜ- .
code
ÜÜ/ 3
=
ÜÜ4 5
code
ÜÜ6 :
}
ÜÜ; <
,
ÜÜ< =
protocol
áá 
:
áá 
Request
áá !
.
áá! "
Scheme
áá" (
)
áá( )
;
áá) *
await
àà 
_emailSender
àà 
.
àà 
SendEmailAsync
àà -
(
àà- .
email
ââ 
,
ââ 
$str
ää $
,
ää$ %
$"
ãã 6
(Please confirm your account by <a href='
ãã :
{
ãã: ;
HtmlEncoder
ãã; F
.
ããF G
Default
ããG N
.
ããN O
Encode
ããO U
(
ããU V
callbackUrl
ããV a
)
ããa b
}
ããb c"
'>clicking here</a>.
ããc w
"
ããw x
)
ããx y
;
ããy z
StatusMessage
çç 
=
çç 
$str
çç O
;
ççO P
return
éé 
RedirectToPage
éé !
(
éé! "
)
éé" #
;
éé# $
}
èè 	
}
êê 
}ëë á
úE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\Manage\ManageNavPages.cs
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
.$ %
Areas% *
.* +
Identity+ 3
.3 4
Pages4 9
.9 :
Account: A
.A B
ManageB H
{ 
public 

static 
class 
ManageNavPages &
{ 
public 
static 
string 
Index "
=># %
$str& -
;- .
public

 
static

 
string

 
ChangePassword

 +
=>

, .
$str

/ ?
;

? @
public 
static 
string 
ExternalLogins +
=>, .
$str/ ?
;? @
public 
static 
string 
PersonalData )
=>* ,
$str- ;
;; <
public 
static 
string #
TwoFactorAuthentication 4
=>5 7
$str8 Q
;Q R
public 
static 
string 
IndexNavClass *
(* +
ViewContext+ 6
viewContext7 B
)B C
=>D F
PageNavClassG S
(S T
viewContextT _
,_ `
Indexa f
)f g
;g h
public 
static 
string "
ChangePasswordNavClass 3
(3 4
ViewContext4 ?
viewContext@ K
)K L
=>M O
PageNavClassP \
(\ ]
viewContext] h
,h i
ChangePasswordj x
)x y
;y z
public 
static 
string "
ExternalLoginsNavClass 3
(3 4
ViewContext4 ?
viewContext@ K
)K L
=>M O
PageNavClassP \
(\ ]
viewContext] h
,h i
ExternalLoginsj x
)x y
;y z
public 
static 
string  
PersonalDataNavClass 1
(1 2
ViewContext2 =
viewContext> I
)I J
=>K M
PageNavClassN Z
(Z [
viewContext[ f
,f g
PersonalDatah t
)t u
;u v
public 
static 
string +
TwoFactorAuthenticationNavClass <
(< =
ViewContext= H
viewContextI T
)T U
=>V X
PageNavClassY e
(e f
viewContextf q
,q r$
TwoFactorAuthentication	s ä
)
ä ã
;
ã å
private 
static 
string 
PageNavClass *
(* +
ViewContext+ 6
viewContext7 B
,B C
stringD J
pageK O
)O P
{ 	
var 

activePage 
= 
viewContext (
.( )
ViewData) 1
[1 2
$str2 >
]> ?
as@ B
stringC I
?? 
System 
. 
IO 
. 
Path !
.! "'
GetFileNameWithoutExtension" =
(= >
viewContext> I
.I J
ActionDescriptorJ Z
.Z [
DisplayName[ f
)f g
;g h
return   
string   
.   
Equals    
(    !

activePage  ! +
,  + ,
page  - 1
,  1 2
StringComparison  3 C
.  C D
OrdinalIgnoreCase  D U
)  U V
?  W X
$str  Y a
:  b c
null  d h
;  h i
}!! 	
}"" 
}## ì
°E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\Manage\PersonalData.cshtml.cs
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
.$ %
Areas% *
.* +
Identity+ 3
.3 4
Pages4 9
.9 :
Account: A
.A B
ManageB H
{ 
public		 

class		 
PersonalDataModel		 "
:		# $
	PageModel		% .
{

 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
public 
PersonalDataModel  
(  !
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
ILogger 
< 
PersonalDataModel %
>% &
logger' -
)- .
{ 	
_userManager 
= 
userManager &
;& '
} 	
public 
async 
Task 
< 
IActionResult '
>' (
OnGet) .
(. /
)/ 0
{ 	
var 
user 
= 
await 
_userManager )
.) *
GetUserAsync* 6
(6 7
User7 ;
); <
;< =
if 
( 
user 
== 
null 
) 
{ 
return 
NotFound 
(  
$"  ")
Unable to load user with ID '" ?
{? @
_userManager@ L
.L M
	GetUserIdM V
(V W
UserW [
)[ \
}\ ]
'.] _
"_ `
)` a
;a b
} 
return 
Page 
( 
) 
; 
} 	
} 
} ã$
ßE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\Manage\ResetAuthenticator.cshtml.cs
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
.$ %
Areas% *
.* +
Identity+ 3
.3 4
Pages4 9
.9 :
Account: A
.A B
ManageB H
{ 
public		 

class		 #
ResetAuthenticatorModel		 (
:		) *
	PageModel		+ 4
{

 
readonly 
UserManager 
< 
IdentityUser )
>) *
_userManager+ 7
;7 8
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
readonly 
ILogger 
< #
ResetAuthenticatorModel 0
>0 1
_logger2 9
;9 :
public #
ResetAuthenticatorModel &
(& '
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
,5 6
ILogger 
< #
ResetAuthenticatorModel +
>+ ,
logger- 3
)3 4
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
[ 	
TempData	 
] 
public 
string 
StatusMessage #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
async 
Task 
< 
IActionResult '
>' (
OnGet) .
(. /
)/ 0
{ 	
var 
user 
= 
await 
_userManager )
.) *
GetUserAsync* 6
(6 7
User7 ;
); <
;< =
if 
( 
user 
== 
null 
) 
{   
return!! 
NotFound!! 
(!!  
$"!!  ")
Unable to load user with ID '!!" ?
{!!? @
_userManager!!@ L
.!!L M
	GetUserId!!M V
(!!V W
User!!W [
)!![ \
}!!\ ]
'.!!] _
"!!_ `
)!!` a
;!!a b
}"" 
return$$ 
Page$$ 
($$ 
)$$ 
;$$ 
}%% 	
public'' 
async'' 
Task'' 
<'' 
IActionResult'' '
>''' (
OnPostAsync'') 4
(''4 5
)''5 6
{(( 	
var)) 
user)) 
=)) 
await)) 
_userManager)) )
.))) *
GetUserAsync))* 6
())6 7
User))7 ;
))); <
;))< =
if** 
(** 
user** 
==** 
null** 
)** 
{++ 
return,, 
NotFound,, 
(,,  
$",,  ")
Unable to load user with ID ',," ?
{,,? @
_userManager,,@ L
.,,L M
	GetUserId,,M V
(,,V W
User,,W [
),,[ \
},,\ ]
'.,,] _
",,_ `
),,` a
;,,a b
}-- 
await// 
_userManager// 
.// $
SetTwoFactorEnabledAsync// 7
(//7 8
user//8 <
,//< =
false//> C
)//C D
;//D E
await00 
_userManager00 
.00 &
ResetAuthenticatorKeyAsync00 9
(009 :
user00: >
)00> ?
;00? @
_logger11 
.11 
LogInformation11 "
(11" #
$str11# d
,11d e
user11f j
.11j k
Id11k m
)11m n
;11n o
await33 
_signInManager33  
.33  !
RefreshSignInAsync33! 3
(333 4
user334 8
)338 9
;339 :
StatusMessage44 
=44 
$str	44 ç
;
44ç é
return66 
RedirectToPage66 !
(66! "
$str66" 9
)669 :
;66: ;
}77 	
}88 
}99 ‘6
†E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\Manage\SetPassword.cshtml.cs
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
.$ %
Areas% *
.* +
Identity+ 3
.3 4
Pages4 9
.9 :
Account: A
.A B
ManageB H
{ 
public		 

class		 
SetPasswordModel		 !
:		" #
	PageModel		$ -
{

 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
public 
SetPasswordModel 
(  
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
)5 6
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
} 	
[ 	
BindProperty	 
] 
public 

InputModel 
Input 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
TempData	 
] 
public 
string 
StatusMessage #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
class 

InputModel 
{ 	
[ 
Required 
] 
[ 
StringLength 
( 
$num 
, 
ErrorMessage +
=, -
$str. l
,l m
MinimumLengthn {
=| }
$num~ 
)	 Ä
]
Ä Å
[   
DataType   
(   
DataType   
.   
Password   '
)  ' (
]  ( )
[!! 
Display!! 
(!! 
Name!! 
=!! 
$str!! *
)!!* +
]!!+ ,
public"" 
string"" 
NewPassword"" %
{""& '
get""( +
;""+ ,
set""- 0
;""0 1
}""2 3
[$$ 
DataType$$ 
($$ 
DataType$$ 
.$$ 
Password$$ '
)$$' (
]$$( )
[%% 
Display%% 
(%% 
Name%% 
=%% 
$str%% 2
)%%2 3
]%%3 4
[&& 
Compare&& 
(&& 
$str&& "
,&&" #
ErrorMessage&&$ 0
=&&1 2
$str&&3 m
)&&m n
]&&n o
public'' 
string'' 
ConfirmPassword'' )
{''* +
get'', /
;''/ 0
set''1 4
;''4 5
}''6 7
}(( 	
public** 
async** 
Task** 
<** 
IActionResult** '
>**' (

OnGetAsync**) 3
(**3 4
)**4 5
{++ 	
var,, 
user,, 
=,, 
await,, 
_userManager,, )
.,,) *
GetUserAsync,,* 6
(,,6 7
User,,7 ;
),,; <
;,,< =
if-- 
(-- 
user-- 
==-- 
null-- 
)-- 
{.. 
return// 
NotFound// 
(//  
$"//  ")
Unable to load user with ID '//" ?
{//? @
_userManager//@ L
.//L M
	GetUserId//M V
(//V W
User//W [
)//[ \
}//\ ]
'.//] _
"//_ `
)//` a
;//a b
}00 
var22 
hasPassword22 
=22 
await22 #
_userManager22$ 0
.220 1
HasPasswordAsync221 A
(22A B
user22B F
)22F G
;22G H
if44 
(44 
hasPassword44 
)44 
{55 
return66 
RedirectToPage66 %
(66% &
$str66& 8
)668 9
;669 :
}77 
return99 
Page99 
(99 
)99 
;99 
}:: 	
public<< 
async<< 
Task<< 
<<< 
IActionResult<< '
><<' (
OnPostAsync<<) 4
(<<4 5
)<<5 6
{== 	
if>> 
(>> 
!>> 

ModelState>> 
.>> 
IsValid>> #
)>># $
{?? 
return@@ 
Page@@ 
(@@ 
)@@ 
;@@ 
}AA 
varCC 
userCC 
=CC 
awaitCC 
_userManagerCC )
.CC) *
GetUserAsyncCC* 6
(CC6 7
UserCC7 ;
)CC; <
;CC< =
ifDD 
(DD 
userDD 
==DD 
nullDD 
)DD 
{EE 
returnFF 
NotFoundFF 
(FF  
$"FF  ")
Unable to load user with ID 'FF" ?
{FF? @
_userManagerFF@ L
.FFL M
	GetUserIdFFM V
(FFV W
UserFFW [
)FF[ \
}FF\ ]
'.FF] _
"FF_ `
)FF` a
;FFa b
}GG 
varII 
addPasswordResultII !
=II" #
awaitII$ )
_userManagerII* 6
.II6 7
AddPasswordAsyncII7 G
(IIG H
userIIH L
,IIL M
InputIIN S
.IIS T
NewPasswordIIT _
)II_ `
;II` a
ifJJ 
(JJ 
!JJ 
addPasswordResultJJ "
.JJ" #
	SucceededJJ# ,
)JJ, -
{KK 
foreachLL 
(LL 
varLL 
errorLL "
inLL# %
addPasswordResultLL& 7
.LL7 8
ErrorsLL8 >
)LL> ?
{MM 

ModelStateNN 
.NN 
AddModelErrorNN ,
(NN, -
stringNN- 3
.NN3 4
EmptyNN4 9
,NN9 :
errorNN; @
.NN@ A
DescriptionNNA L
)NNL M
;NNM N
}OO 
returnPP 
PagePP 
(PP 
)PP 
;PP 
}QQ 
awaitSS 
_signInManagerSS  
.SS  !
RefreshSignInAsyncSS! 3
(SS3 4
userSS4 8
)SS8 9
;SS9 :
StatusMessageTT 
=TT 
$strTT 9
;TT9 :
returnVV 
RedirectToPageVV !
(VV! "
)VV" #
;VV# $
}WW 	
}XX 
}YY ∑*
¨E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\Manage\TwoFactorAuthentication.cshtml.cs
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
.$ %
Areas% *
.* +
Identity+ 3
.3 4
Pages4 9
.9 :
Account: A
.A B
ManageB H
{ 
public		 

class		 (
TwoFactorAuthenticationModel		 -
:		. /
	PageModel		0 9
{

 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
public (
TwoFactorAuthenticationModel +
(+ ,
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
,5 6
ILogger 
< (
TwoFactorAuthenticationModel 0
>0 1
logger2 8
)8 9
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
} 	
public 
bool 
HasAuthenticator $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
int 
RecoveryCodesLeft $
{% &
get' *
;* +
set, /
;/ 0
}1 2
[ 	
BindProperty	 
] 
public 
bool 
Is2faEnabled  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
bool 
IsMachineRemembered '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
[!! 	
TempData!!	 
]!! 
public"" 
string"" 
StatusMessage"" #
{""$ %
get""& )
;"") *
set""+ .
;"". /
}""0 1
public$$ 
async$$ 
Task$$ 
<$$ 
IActionResult$$ '
>$$' (
OnGet$$) .
($$. /
)$$/ 0
{%% 	
var&& 
user&& 
=&& 
await&& 
_userManager&& )
.&&) *
GetUserAsync&&* 6
(&&6 7
User&&7 ;
)&&; <
;&&< =
if'' 
('' 
user'' 
=='' 
null'' 
)'' 
{(( 
return)) 
NotFound)) 
())  
$"))  ")
Unable to load user with ID '))" ?
{))? @
_userManager))@ L
.))L M
	GetUserId))M V
())V W
User))W [
)))[ \
}))\ ]
'.))] _
"))_ `
)))` a
;))a b
}** 
HasAuthenticator,, 
=,, 
await,, $
_userManager,,% 1
.,,1 2$
GetAuthenticatorKeyAsync,,2 J
(,,J K
user,,K O
),,O P
!=,,Q S
null,,T X
;,,X Y
Is2faEnabled-- 
=-- 
await--  
_userManager--! -
.--- .$
GetTwoFactorEnabledAsync--. F
(--F G
user--G K
)--K L
;--L M
IsMachineRemembered.. 
=..  !
await.." '
_signInManager..( 6
...6 7,
 IsTwoFactorClientRememberedAsync..7 W
(..W X
user..X \
)..\ ]
;..] ^
RecoveryCodesLeft// 
=// 
await//  %
_userManager//& 2
.//2 3#
CountRecoveryCodesAsync//3 J
(//J K
user//K O
)//O P
;//P Q
return11 
Page11 
(11 
)11 
;11 
}22 	
public44 
async44 
Task44 
<44 
IActionResult44 '
>44' (
OnPost44) /
(44/ 0
)440 1
{55 	
var66 
user66 
=66 
await66 
_userManager66 )
.66) *
GetUserAsync66* 6
(666 7
User667 ;
)66; <
;66< =
if77 
(77 
user77 
==77 
null77 
)77 
{88 
return99 
NotFound99 
(99  
$"99  ")
Unable to load user with ID '99" ?
{99? @
_userManager99@ L
.99L M
	GetUserId99M V
(99V W
User99W [
)99[ \
}99\ ]
'.99] _
"99_ `
)99` a
;99a b
}:: 
await<< 
_signInManager<<  
.<<  !&
ForgetTwoFactorClientAsync<<! ;
(<<; <
)<<< =
;<<= >
StatusMessage== 
=== 
$str	== î
;
==î ï
return>> 
RedirectToPage>> !
(>>! "
)>>" #
;>># $
}?? 	
}@@ 
}AA ¡I
ñE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\Register.cshtml.cs
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
.$ %
Areas% *
.* +
Identity+ 3
.3 4
Pages4 9
.9 :
Account: A
{ 
[ 
AllowAnonymous 
] 
public 

class 
RegisterModel 
:  
	PageModel! *
{ 
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
ILogger  
<  !
RegisterModel! .
>. /
_logger0 7
;7 8
public 
RegisterModel 
( 
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
,5 6
ILogger 
< 
RegisterModel !
>! "
logger# )
)) *
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
[!! 	
BindProperty!!	 
]!! 
public"" 

InputModel"" 
Input"" 
{""  !
get""" %
;""% &
set""' *
;""* +
}"", -
public$$ 
string$$ 
	ReturnUrl$$ 
{$$  !
get$$" %
;$$% &
set$$' *
;$$* +
}$$, -
public&& 
class&& 

InputModel&& 
{'' 	
[(( 
Required(( 
](( 
[)) 
EmailAddress)) 
])) 
[** 
Display** 
(** 
Name** 
=** 
$str** #
)**# $
]**$ %
public++ 
string++ 
Email++ 
{++  !
get++" %
;++% &
set++' *
;++* +
}++, -
[-- 
Required-- 
]-- 
[.. 
StringLength.. 
(.. 
$num.. 
,.. 
ErrorMessage.. +
=.., -
$str... l
,..l m
MinimumLength..n {
=..| }
$num..~ 
)	.. Ä
]
..Ä Å
[// 
DataType// 
(// 
DataType// 
.// 
Password// '
)//' (
]//( )
[00 
Display00 
(00 
Name00 
=00 
$str00 &
)00& '
]00' (
public11 
string11 
Password11 "
{11# $
get11% (
;11( )
set11* -
;11- .
}11/ 0
[33 
DataType33 
(33 
DataType33 
.33 
Password33 '
)33' (
]33( )
[44 
Display44 
(44 
Name44 
=44 
$str44 .
)44. /
]44/ 0
[55 
Compare55 
(55 
$str55 
,55  
ErrorMessage55! -
=55. /
$str550 f
)55f g
]55g h
public66 
string66 
ConfirmPassword66 )
{66* +
get66, /
;66/ 0
set661 4
;664 5
}666 7
}77 	
public99 
void99 
OnGet99 
(99 
string99  
	returnUrl99! *
=99+ ,
null99- 1
)991 2
{:: 	
	ReturnUrl;; 
=;; 
	returnUrl;; !
;;;! "
}<< 	
public>> 
async>> 
Task>> 
<>> 
IActionResult>> '
>>>' (
OnPostAsync>>) 4
(>>4 5
string>>5 ;
	returnUrl>>< E
=>>F G
null>>H L
)>>L M
{?? 	
	returnUrl@@ 
=@@ 
	returnUrl@@ !
??@@" $
Url@@% (
.@@( )
Content@@) 0
(@@0 1
$str@@1 5
)@@5 6
;@@6 7
ifAA 
(AA 

ModelStateAA 
.AA 
IsValidAA "
)AA" #
{BB 
varCC 
userCC 
=CC 
newCC 
IdentityUserCC +
{CC, -
UserNameCC. 6
=CC7 8
InputCC9 >
.CC> ?
EmailCC? D
,CCD E
EmailCCF K
=CCL M
InputCCN S
.CCS T
EmailCCT Y
}CCZ [
;CC[ \
varDD 
resultDD 
=DD 
awaitDD "
_userManagerDD# /
.DD/ 0
CreateAsyncDD0 ;
(DD; <
userDD< @
,DD@ A
InputDDB G
.DDG H
PasswordDDH P
)DDP Q
;DDQ R
ifEE 
(EE 
resultEE 
.EE 
	SucceededEE $
)EE$ %
{FF 
_loggerGG 
.GG 
LogInformationGG *
(GG* +
$strGG+ V
)GGV W
;GGW X
awaitHH 
_signInManagerHH (
.HH( )
SignInAsyncHH) 4
(HH4 5
userHH5 9
,HH9 :
isPersistentHH; G
:HHG H
falseHHI N
)HHN O
;HHO P
stringII 
mySqlStatement2II *
=II+ ,
$strII- K
+IIK L
userIIL P
.IIP Q
IdIIQ S
+IIS T
$strIIT Y
+IIY Z
InputIIZ _
.II_ `
EmailII` e
+IIe f
$strIIf t
;IIt u
varJJ 

jsonStringJJ "
=JJ# $
SystemJJ% +
.JJ+ ,
IOJJ, .
.JJ. /
FileJJ/ 3
.JJ3 4
ReadAllTextJJ4 ?
(JJ? @
$strJJ@ Y
)JJY Z
;JJZ [
varKK 
	myJObjectKK !
=KK" #
JObjectKK$ +
.KK+ ,
ParseKK, 1
(KK1 2

jsonStringKK2 <
)KK< =
;KK= >
varLL 
connectionStringLL (
=LL) *

@myJObjectLL+ 5
.LL5 6
SelectTokenLL6 A
(LLA B
$strLLB P
)LLP Q
.LLQ R
ValueLLR W
<LLW X
stringLLX ^
>LL^ _
(LL_ `
)LL` a
;LLa b

SqlCommandMM 
command2MM &
=MM' (
newMM) ,

SqlCommandMM- 7
(MM7 8
mySqlStatement2MM8 G
)MMG H
;MMH I
usingOO 
(OO 
SqlConnectionOO (
cnnOO) ,
=OO- .
newOO/ 2
SqlConnectionOO3 @
(OO@ A
connectionStringOOA Q
)OOQ R
)OOR S
{PP 
command2QQ  
.QQ  !

ConnectionQQ! +
=QQ, -
cnnQQ. 1
;QQ1 2
cnnRR 
.RR 
OpenRR  
(RR  !
)RR! "
;RR" #
command2SS  
.SS  !
ExecuteNonQuerySS! 0
(SS0 1
)SS1 2
;SS2 3
cnnTT 
.TT 
CloseTT !
(TT! "
)TT" #
;TT# $
}UU 
stringWW 
mySqlStatement3WW *
=WW+ ,
$strWW- V
+WWW X
userWWY ]
.WW] ^
IdWW^ `
+WWa b
$strWWc k
;WWk l

SqlCommandXX 
command3XX '
=XX( )
newXX* -

SqlCommandXX. 8
(XX8 9
mySqlStatement3XX9 H
)XXH I
;XXI J
usingZZ 
(ZZ 
SqlConnectionZZ (
cnnZZ) ,
=ZZ- .
newZZ/ 2
SqlConnectionZZ3 @
(ZZ@ A
connectionStringZZA Q
)ZZQ R
)ZZR S
{[[ 
command3\\  
.\\  !

Connection\\! +
=\\, -
cnn\\. 1
;\\1 2
cnn]] 
.]] 
Open]]  
(]]  !
)]]! "
;]]" #
command3^^  
.^^  !
ExecuteNonQuery^^! 0
(^^0 1
)^^1 2
;^^2 3
cnn__ 
.__ 
Close__ !
(__! "
)__" #
;__# $
}`` 
returncc 
LocalRedirectcc (
(cc( )
	returnUrlcc) 2
)cc2 3
;cc3 4
}dd 
foreachee 
(ee 
varee 
erroree "
inee# %
resultee& ,
.ee, -
Errorsee- 3
)ee3 4
{ff 

ModelStategg 
.gg 
AddModelErrorgg ,
(gg, -
stringgg- 3
.gg3 4
Emptygg4 9
,gg9 :
errorgg; @
.gg@ A
DescriptionggA L
)ggL M
;ggM N
}hh 
}jj 
returnmm 
Pagemm 
(mm 
)mm 
;mm 
}nn 	
}oo 
}pp ‹,
õE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\ResetPassword.cshtml.cs
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
.$ %
Areas% *
.* +
Identity+ 3
.3 4
Pages4 9
.9 :
Account: A
{		 
[

 
AllowAnonymous

 
]

 
public 

class 
ResetPasswordModel #
:$ %
	PageModel& /
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
public 
ResetPasswordModel !
(! "
UserManager" -
<- .
IdentityUser. :
>: ;
userManager< G
)G H
{ 	
_userManager 
= 
userManager &
;& '
} 	
[ 	
BindProperty	 
] 
public 

InputModel 
Input 
{  !
get" %
;% &
set' *
;* +
}, -
public 
class 

InputModel 
{ 	
[ 
Required 
] 
[ 
EmailAddress 
] 
public 
string 
Email 
{  !
get" %
;% &
set' *
;* +
}, -
[ 
Required 
] 
[ 
StringLength 
( 
$num 
, 
ErrorMessage +
=, -
$str. l
,l m
MinimumLengthn {
=| }
$num~ 
)	 Ä
]
Ä Å
[ 
DataType 
( 
DataType 
. 
Password '
)' (
]( )
public   
string   
Password   "
{  # $
get  % (
;  ( )
set  * -
;  - .
}  / 0
["" 
DataType"" 
("" 
DataType"" 
."" 
Password"" '
)""' (
]""( )
[## 
Display## 
(## 
Name## 
=## 
$str## .
)##. /
]##/ 0
[$$ 
Compare$$ 
($$ 
$str$$ 
,$$  
ErrorMessage$$! -
=$$. /
$str$$0 f
)$$f g
]$$g h
public%% 
string%% 
ConfirmPassword%% )
{%%* +
get%%, /
;%%/ 0
set%%1 4
;%%4 5
}%%6 7
public'' 
string'' 
Code'' 
{''  
get''! $
;''$ %
set''& )
;'') *
}''+ ,
}(( 	
public** 
IActionResult** 
OnGet** "
(**" #
string**# )
code*** .
=**/ 0
null**1 5
)**5 6
{++ 	
if,, 
(,, 
code,, 
==,, 
null,, 
),, 
{-- 
return.. 

BadRequest.. !
(..! "
$str.." O
)..O P
;..P Q
}// 
else00 
{11 
Input22 
=22 
new22 

InputModel22 &
{33 
Code44 
=44 
code44 
}55 
;55 
return66 
Page66 
(66 
)66 
;66 
}77 
}88 	
public:: 
async:: 
Task:: 
<:: 
IActionResult:: '
>::' (
OnPostAsync::) 4
(::4 5
)::5 6
{;; 	
if<< 
(<< 
!<< 

ModelState<< 
.<< 
IsValid<< #
)<<# $
{== 
return>> 
Page>> 
(>> 
)>> 
;>> 
}?? 
varAA 
userAA 
=AA 
awaitAA 
_userManagerAA )
.AA) *
FindByEmailAsyncAA* :
(AA: ;
InputAA; @
.AA@ A
EmailAAA F
)AAF G
;AAG H
ifBB 
(BB 
userBB 
==BB 
nullBB 
)BB 
{CC 
returnEE 
RedirectToPageEE %
(EE% &
$strEE& C
)EEC D
;EED E
}FF 
varHH 
resultHH 
=HH 
awaitHH 
_userManagerHH +
.HH+ ,
ResetPasswordAsyncHH, >
(HH> ?
userHH? C
,HHC D
InputHHE J
.HHJ K
CodeHHK O
,HHO P
InputHHQ V
.HHV W
PasswordHHW _
)HH_ `
;HH` a
ifII 
(II 
resultII 
.II 
	SucceededII  
)II  !
{JJ 
returnKK 
RedirectToPageKK %
(KK% &
$strKK& C
)KKC D
;KKD E
}LL 
foreachNN 
(NN 
varNN 
errorNN 
inNN !
resultNN" (
.NN( )
ErrorsNN) /
)NN/ 0
{OO 

ModelStatePP 
.PP 
AddModelErrorPP (
(PP( )
stringPP) /
.PP/ 0
EmptyPP0 5
,PP5 6
errorPP7 <
.PP< =
DescriptionPP= H
)PPH I
;PPI J
}QQ 
returnRR 
PageRR 
(RR 
)RR 
;RR 
}SS 	
}TT 
}UU »
ßE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\ResetPasswordConfirmation.cshtml.cs
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
.$ %
Areas% *
.* +
Identity+ 3
.3 4
Pages4 9
.9 :
Account: A
{ 
[ 
AllowAnonymous 
] 
public 

class *
ResetPasswordConfirmationModel /
:0 1
	PageModel2 ;
{		 
public

 
void

 
OnGet

 
(

 
)

 
{ 	
throw 
new !
NotSupportedException +
(+ ,
), -
;- .
} 	
} 
} º
ãE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Error.cshtml.cs
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
.$ %
Areas% *
.* +
Identity+ 3
.3 4
Pages4 9
{ 
[ 
AllowAnonymous 
] 
[		 
ResponseCache		 
(		 
Duration		 
=		 
$num		 
,		  
Location		! )
=		* +!
ResponseCacheLocation		, A
.		A B
None		B F
,		F G
NoStore		H O
=		P Q
true		R V
)		V W
]		W X
public

 

class

 

ErrorModel

 
:

 
	PageModel

 '
{ 
public 
string 
	RequestId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 
ShowRequestId !
=>" $
!% &
string& ,
., -
IsNullOrEmpty- :
(: ;
	RequestId; D
)D E
;E F
public 
void 
OnGet 
( 
) 
{ 	
	RequestId 
= 
Activity  
.  !
Current! (
?( )
.) *
Id* ,
??- /
HttpContext0 ;
.; <
TraceIdentifier< K
;K L
} 	
} 
} ïO
äE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Controllers\CategoriesController.cs
	namespace		 	&
Ecommerce_proiect_an4_sem1		
 $
.		$ %
Controllers		% 0
{

 
[ 
	Authorize 
( 
Roles 
= 
$str 
) 
]  
public 

class  
CategoriesController %
:& '

Controller( 2
{ 
private 
readonly 
EcommerceContext )
_context* 2
;2 3
public  
CategoriesController #
(# $
EcommerceContext$ 4
context5 <
)< =
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
IActionResult '
>' (
Index) .
(. /
)/ 0
{ 	
return 
View 
( 
await 
_context &
.& '
Category' /
./ 0
ToListAsync0 ;
(; <
)< =
)= >
;> ?
} 	
public 
async 
Task 
< 
IActionResult '
>' (
Details) 0
(0 1
string1 7
id8 :
): ;
{ 	
if 
( 
id 
== 
null 
) 
{ 
return   
NotFound   
(    
)    !
;  ! "
}!! 
var## 
category## 
=## 
await##  
_context##! )
.##) *
Category##* 2
.$$ 
FirstOrDefaultAsync$$ $
($$$ %
m$$% &
=>$$' )
m$$* +
.$$+ ,

CategoryId$$, 6
==$$7 9
id$$: <
)$$< =
;$$= >
if%% 
(%% 
category%% 
==%% 
null%%  
)%%  !
{&& 
return'' 
NotFound'' 
(''  
)''  !
;''! "
}(( 
return** 
View** 
(** 
category**  
)**  !
;**! "
}++ 	
[,, 	
	Authorize,,	 
(,, 
Roles,, 
=,, 
$str,, "
),," #
],,# $
public.. 
IActionResult.. 
Create.. #
(..# $
)..$ %
{// 	
return00 
View00 
(00 
)00 
;00 
}11 	
[22 	
	Authorize22	 
(22 
Roles22 
=22 
$str22 "
)22" #
]22# $
[66 	
HttpPost66	 
]66 
[77 	$
ValidateAntiForgeryToken77	 !
]77! "
public88 
async88 
Task88 
<88 
IActionResult88 '
>88' (
Create88) /
(88/ 0
[880 1
Bind881 5
(885 6
$str886 D
)88D E
]88E F
Category88G O
category88P X
)88X Y
{99 	
if:: 
(:: 

ModelState:: 
.:: 
IsValid:: "
)::" #
{;; 
category<< 
.<< 

CategoryId<< #
=<<$ %
Guid<<& *
.<<* +
NewGuid<<+ 2
(<<2 3
)<<3 4
.<<4 5
ToString<<5 =
(<<= >
)<<> ?
;<<? @
_context== 
.== 
Add== 
(== 
category== %
)==% &
;==& '
await>> 
_context>> 
.>> 
SaveChangesAsync>> /
(>>/ 0
)>>0 1
;>>1 2
return?? 
RedirectToAction?? '
(??' (
nameof??( .
(??. /
Index??/ 4
)??4 5
)??5 6
;??6 7
}@@ 
returnAA 
ViewAA 
(AA 
categoryAA  
)AA  !
;AA! "
}BB 	
publicEE 
asyncEE 
TaskEE 
<EE 
IActionResultEE '
>EE' (
EditEE) -
(EE- .
stringEE. 4
idEE5 7
)EE7 8
{FF 	
ifGG 
(GG 
idGG 
==GG 
nullGG 
)GG 
{HH 
returnII 
NotFoundII 
(II  
)II  !
;II! "
}JJ 
varLL 
categoryLL 
=LL 
awaitLL  
_contextLL! )
.LL) *
CategoryLL* 2
.LL2 3
	FindAsyncLL3 <
(LL< =
idLL= ?
)LL? @
;LL@ A
ifMM 
(MM 
categoryMM 
==MM 
nullMM  
)MM  !
{NN 
returnOO 
NotFoundOO 
(OO  
)OO  !
;OO! "
}PP 
returnQQ 
ViewQQ 
(QQ 
categoryQQ  
)QQ  !
;QQ! "
}RR 	
[WW 	
HttpPostWW	 
]WW 
[XX 	$
ValidateAntiForgeryTokenXX	 !
]XX! "
publicYY 
asyncYY 
TaskYY 
<YY 
IActionResultYY '
>YY' (
EditYY) -
(YY- .
stringYY. 4
idYY5 7
,YY7 8
[YY9 :
BindYY: >
(YY> ?
$strYY? X
)YYX Y
]YYY Z
CategoryYY[ c
categoryYYd l
)YYl m
{ZZ 	
if[[ 
([[ 
id[[ 
!=[[ 
category[[ 
.[[ 

CategoryId[[ )
)[[) *
{\\ 
return]] 
NotFound]] 
(]]  
)]]  !
;]]! "
}^^ 
if`` 
(`` 

ModelState`` 
.`` 
IsValid`` "
)``" #
{aa 
trybb 
{cc 
_contextdd 
.dd 
Updatedd #
(dd# $
categorydd$ ,
)dd, -
;dd- .
awaitee 
_contextee "
.ee" #
SaveChangesAsyncee# 3
(ee3 4
)ee4 5
;ee5 6
}ff 
catchgg 
(gg (
DbUpdateConcurrencyExceptiongg 3
)gg3 4
{hh 
ifii 
(ii 
!ii 
CategoryExistsii '
(ii' (
categoryii( 0
.ii0 1

CategoryIdii1 ;
)ii; <
)ii< =
{jj 
returnkk 
NotFoundkk '
(kk' (
)kk( )
;kk) *
}ll 
elsemm 
{nn 
throwoo 
;oo 
}pp 
}qq 
returnrr 
RedirectToActionrr '
(rr' (
nameofrr( .
(rr. /
Indexrr/ 4
)rr4 5
)rr5 6
;rr6 7
}ss 
returntt 
Viewtt 
(tt 
categorytt  
)tt  !
;tt! "
}uu 	
publicxx 
asyncxx 
Taskxx 
<xx 
IActionResultxx '
>xx' (
Deletexx) /
(xx/ 0
stringxx0 6
idxx7 9
)xx9 :
{yy 	
ifzz 
(zz 
idzz 
==zz 
nullzz 
)zz 
{{{ 
return|| 
NotFound|| 
(||  
)||  !
;||! "
}}} 
var 
category 
= 
await  
_context! )
.) *
Category* 2
.
ÄÄ 

FirstAsync
ÄÄ 
(
ÄÄ 
m
ÄÄ 
=>
ÄÄ  
m
ÄÄ! "
.
ÄÄ" #

CategoryId
ÄÄ# -
==
ÄÄ. 0
id
ÄÄ1 3
)
ÄÄ3 4
;
ÄÄ4 5
if
ÅÅ 
(
ÅÅ 
null
ÅÅ 
==
ÅÅ 
category
ÅÅ  
)
ÅÅ  !
{
ÇÇ 
return
ÉÉ 
NotFound
ÉÉ 
(
ÉÉ  
)
ÉÉ  !
;
ÉÉ! "
}
ÑÑ 
return
ÜÜ 
View
ÜÜ 
(
ÜÜ 
category
ÜÜ  
)
ÜÜ  !
;
ÜÜ! "
}
áá 	
[
ää 	
HttpPost
ää	 
,
ää 

ActionName
ää 
(
ää 
$str
ää &
)
ää& '
]
ää' (
[
ãã 	&
ValidateAntiForgeryToken
ãã	 !
]
ãã! "
public
åå 
async
åå 
Task
åå 
<
åå 
IActionResult
åå '
>
åå' (
DeleteConfirmed
åå) 8
(
åå8 9
string
åå9 ?
id
åå@ B
)
ååB C
{
çç 	
var
éé 
category
éé 
=
éé 
await
éé  
_context
éé! )
.
éé) *
Category
éé* 2
.
éé2 3
	FindAsync
éé3 <
(
éé< =
id
éé= ?
)
éé? @
;
éé@ A
_context
èè 
.
èè 
Category
èè 
.
èè 
Remove
èè $
(
èè$ %
category
èè% -
)
èè- .
;
èè. /
await
êê 
_context
êê 
.
êê 
SaveChangesAsync
êê +
(
êê+ ,
)
êê, -
;
êê- .
return
ëë 
RedirectToAction
ëë #
(
ëë# $
nameof
ëë$ *
(
ëë* +
Index
ëë+ 0
)
ëë0 1
)
ëë1 2
;
ëë2 3
}
íí 	
private
îî 
bool
îî 
CategoryExists
îî #
(
îî# $
string
îî$ *
id
îî+ -
)
îî- .
{
ïï 	
return
ññ 
_context
ññ 
.
ññ 
Category
ññ $
.
ññ$ %
Any
ññ% (
(
ññ( )
e
ññ) *
=>
ññ+ -
e
ññ. /
.
ññ/ 0

CategoryId
ññ0 :
==
ññ; =
id
ññ> @
)
ññ@ A
;
ññA B
}
óó 	
}
òò 
}ôô ¸
ÑE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Controllers\HomeController.cs
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
.$ %
Controllers% 0
{ 
public 

class 
HomeController 
:  !

Controller" ,
{ 
public		 
IActionResult		 
Index		 "
(		" #
)		# $
{

 	
return 
View 
( 
) 
; 
} 	
public 
IActionResult 
Privacy $
($ %
)% &
{ 	
return 
View 
( 
) 
; 
} 	
[ 	
ResponseCache	 
( 
Duration 
=  !
$num" #
,# $
Location% -
=. /!
ResponseCacheLocation0 E
.E F
NoneF J
,J K
NoStoreL S
=T U
trueV Z
)Z [
][ \
public 
IActionResult 
Error "
(" #
)# $
{ 	
return 
View 
( 
new 
ErrorViewModel *
{+ ,
	RequestId- 6
=7 8
Activity9 A
.A B
CurrentB I
?I J
.J K
IdK M
??N P
HttpContextQ \
.\ ]
TraceIdentifier] l
}m n
)n o
;o p
} 	
} 
} ≠¡
ÜE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Controllers\OrdersController.cs
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
.$ %
Controllers% 0
{ 
[ 
	Authorize 
( 
Roles 
= 
$str "
)" #
]# $
public 

class 
OrdersController !
:" #

Controller$ .
{ 
private 
readonly 
EcommerceContext )
_context* 2
;2 3
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
public 
OrdersController 
(  
EcommerceContext  0
context1 8
,8 9 
IHttpContextAccessor: N
httpContextAccessorO b
)b c
{ 	
_context 
= 
context 
;  
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7
} 	
public 
async 
Task 
< 
IActionResult '
>' (
Index) .
(. /
)/ 0
{ 	
var 
currentClientRole !
=" # 
_httpContextAccessor$ 8
.8 9
HttpContext9 D
.D E
UserE I
.I J
	FindFirstJ S
(S T

ClaimTypesT ^
.^ _
Role_ c
)c d
.d e
Valuee j
;j k
if 
( 
currentClientRole !
==" $
$str% ,
), -
{ 

IQueryable   
<   
Order    
>    !
ecommerceContext  " 2
=  3 4
null  5 9
;  9 :
ecommerceContext!!  
=!!! "
_context!!# +
.!!+ ,
Order!!, 1
.!!1 2
Include!!2 9
(!!9 :
o!!: ;
=>!!< >
o!!? @
.!!@ A
Client!!A G
)!!G H
.!!H I
Include!!I P
(!!P Q
p!!Q R
=>!!S U
p!!V W
.!!W X
ProductOrder!!X d
)!!d e
.!!e f
ThenInclude!!f q
(!!q r
x!!r s
=>!!t v
x!!w x
.!!x y"
ProductIdFkNavigation	!!y é
)
!!é è
.
!!è ê
Where
!!ê ï
(
!!ï ñ
z
!!ñ ó
=>
!!ò ö
z
!!õ ú
.
!!ú ù
HasBeenPlaced
!!ù ™
==
!!´ ≠
$num
!!Æ Ø
&&
!!∞ ≤
z
!!≥ ¥
.
!!¥ µ
HasBeenConfirmed
!!µ ≈
.
!!≈ ∆
Contains
!!∆ Œ
(
!!Œ œ
$str
!!œ “
)
!!“ ”
)
!!” ‘
.
!!‘ ’
OrderBy
!!’ ‹
(
!!‹ ›
s
!!› ﬁ
=>
!!ﬂ ·
s
!!‚ „
.
!!„ ‰
HasBeenConfirmed
!!‰ Ù
)
!!Ù ı
;
!!ı ˆ
return"" 
View"" 
("" 
await"" !
ecommerceContext""" 2
.""2 3
ToListAsync""3 >
(""> ?
)""? @
)""@ A
;""A B
}## 
else$$ 
{%% 

IQueryable&& 
<&& 
Order&&  
>&&  !
ecommerceContext&&" 2
=&&3 4
null&&5 9
;&&9 :
var'' 
currentClient'' !
=''" # 
_httpContextAccessor''$ 8
.''8 9
HttpContext''9 D
.''D E
User''E I
.''I J
	FindFirst''J S
(''S T

ClaimTypes''T ^
.''^ _
NameIdentifier''_ m
)''m n
.''n o
Value''o t
;''t u
ecommerceContext((  
=((! "
_context((# +
.((+ ,
Order((, 1
.((1 2
Include((2 9
(((9 :
o((: ;
=>((< >
o((? @
.((@ A
Client((A G
)((G H
.((H I
Include((I P
(((P Q
p((Q R
=>((S U
p((V W
.((W X
ProductOrder((X d
)((d e
.((e f
ThenInclude((f q
(((q r
x((r s
=>((t v
x((w x
.((x y"
ProductIdFkNavigation	((y é
)
((é è
.
((è ê
Where
((ê ï
(
((ï ñ
y
((ñ ó
=>
((ò ö
y
((õ ú
.
((ú ù
ClientId
((ù •
==
((¶ ®
currentClient
((© ∂
)
((∂ ∑
.
((∑ ∏
Where
((∏ Ω
(
((Ω æ
z
((æ ø
=>
((¿ ¬
z
((√ ƒ
.
((ƒ ≈
HasBeenPlaced
((≈ “
==
((” ’
$num
((÷ ◊
)
((◊ ÿ
.
((ÿ Ÿ
OrderBy
((Ÿ ‡
(
((‡ ·
s
((· ‚
=>
((„ Â
s
((Ê Á
.
((Á Ë
HasBeenConfirmed
((Ë ¯
)
((¯ ˘
;
((˘ ˙
return)) 
View)) 
()) 
await)) !
ecommerceContext))" 2
.))2 3
ToListAsync))3 >
())> ?
)))? @
)))@ A
;))A B
}** 
}++ 	
[.. 	

ActionName..	 
(.. 
$str.. !
)..! "
].." #
public// 
async// 
Task// 
<// 
IActionResult// '
>//' (
IndexBasket//) 4
(//4 5
)//5 6
{00 	
var11 
currentClientRole11 !
=11" # 
_httpContextAccessor11$ 8
.118 9
HttpContext119 D
.11D E
User11E I
.11I J
	FindFirst11J S
(11S T

ClaimTypes11T ^
.11^ _
Role11_ c
)11c d
.11d e
Value11e j
;11j k
if22 
(22 
currentClientRole22 !
==22" $
$str22% ,
)22, -
{33 

IQueryable44 
<44 
Order44  
>44  !
ecommerceContext44" 2
=443 4
null445 9
;449 :
ecommerceContext55  
=55! "
_context55# +
.55+ ,
Order55, 1
.551 2
Include552 9
(559 :
o55: ;
=>55< >
o55? @
.55@ A
Client55A G
)55G H
.55H I
Include55I P
(55P Q
p55Q R
=>55S U
p55V W
.55W X
ProductOrder55X d
)55d e
.55e f
ThenInclude55f q
(55q r
x55r s
=>55t v
x55w x
.55x y"
ProductIdFkNavigation	55y é
)
55é è
.
55è ê
Where
55ê ï
(
55ï ñ
z
55ñ ó
=>
55ò ö
z
55õ ú
.
55ú ù
HasBeenPlaced
55ù ™
==
55´ ≠
$num
55Æ Ø
)
55Ø ∞
;
55∞ ±
return66 
View66 
(66 
await66 !
ecommerceContext66" 2
.662 3
ToListAsync663 >
(66> ?
)66? @
)66@ A
;66A B
}77 
else88 
{99 

IQueryable:: 
<:: 
Order::  
>::  !
ecommerceContext::" 2
=::3 4
null::5 9
;::9 :
var;; 
currentClient;; !
=;;" # 
_httpContextAccessor;;$ 8
.;;8 9
HttpContext;;9 D
.;;D E
User;;E I
.;;I J
	FindFirst;;J S
(;;S T

ClaimTypes;;T ^
.;;^ _
NameIdentifier;;_ m
);;m n
.;;n o
Value;;o t
;;;t u
ecommerceContext<<  
=<<! "
_context<<# +
.<<+ ,
Order<<, 1
.<<1 2
Include<<2 9
(<<9 :
o<<: ;
=><<< >
o<<? @
.<<@ A
Client<<A G
)<<G H
.<<H I
Include<<I P
(<<P Q
p<<Q R
=><<S U
p<<V W
.<<W X
ProductOrder<<X d
)<<d e
.<<e f
ThenInclude<<f q
(<<q r
x<<r s
=><<t v
x<<w x
.<<x y"
ProductIdFkNavigation	<<y é
)
<<é è
.
<<è ê
Where
<<ê ï
(
<<ï ñ
y
<<ñ ó
=>
<<ò ö
y
<<õ ú
.
<<ú ù
ClientId
<<ù •
==
<<¶ ®
currentClient
<<© ∂
)
<<∂ ∑
.
<<∑ ∏
Where
<<∏ Ω
(
<<Ω æ
z
<<æ ø
=>
<<¿ ¬
z
<<√ ƒ
.
<<ƒ ≈
HasBeenPlaced
<<≈ “
==
<<” ’
$num
<<÷ ◊
)
<<◊ ÿ
;
<<ÿ Ÿ
return== 
View== 
(== 
await== !
ecommerceContext==" 2
.==2 3
ToListAsync==3 >
(==> ?
)==? @
)==@ A
;==A B
}>> 
}?? 	
publicBB 
asyncBB 
TaskBB 
<BB 
IActionResultBB '
>BB' (
DetailsBB) 0
(BB0 1
stringBB1 7
idBB8 :
)BB: ;
{CC 	
ifDD 
(DD 
nullDD 
==DD 
idDD 
)DD 
{EE 
returnFF 
NotFoundFF 
(FF  
)FF  !
;FF! "
}GG 
varII 
orderII 
=II 
awaitII 
_contextII &
.II& '
OrderII' ,
.JJ 
IncludeJJ 
(JJ 
oJJ 
=>JJ 
oJJ 
.JJ  
ClientJJ  &
)JJ& '
.KK 
FirstOrDefaultAsyncKK $
(KK$ %
mKK% &
=>KK' )
mKK* +
.KK+ ,
OrderIdKK, 3
==KK4 6
idKK7 9
)KK9 :
;KK: ;
ifLL 
(LL 
orderLL 
==LL 
nullLL 
)LL 
{MM 
returnNN 
NotFoundNN 
(NN  
)NN  !
;NN! "
}OO 
returnQQ 
ViewQQ 
(QQ 
orderQQ 
)QQ 
;QQ 
}RR 	
publicUU 
IActionResultUU 
CreateUU #
(UU# $
)UU$ %
{VV 	
ViewDataWW 
[WW 
$strWW 
]WW  
=WW! "
newWW# &

SelectListWW' 1
(WW1 2
_contextWW2 :
.WW: ;
UserWW; ?
,WW? @
$strWWA E
,WWE F
$strWWG K
)WWK L
;WWL M
returnXX 
ViewXX 
(XX 
)XX 
;XX 
}YY 	
[^^ 	
HttpPost^^	 
]^^ 
[__ 	$
ValidateAntiForgeryToken__	 !
]__! "
public`` 
async`` 
Task`` 
<`` 
IActionResult`` '
>``' (
Create``) /
(``/ 0
[``0 1
Bind``1 5
(``5 6
$str``6 W
)``W X
]``X Y
Order``Z _
order``` e
)``e f
{aa 	
ifbb 
(bb 

ModelStatebb 
.bb 
IsValidbb "
)bb" #
{cc 
orderdd 
.dd 
OrderIddd 
=dd 
Guiddd  $
.dd$ %
NewGuiddd% ,
(dd, -
)dd- .
.dd. /
ToStringdd/ 7
(dd7 8
)dd8 9
;dd9 :
orderee 
.ee 
HasBeenPlacedee #
=ee$ %
$numee& '
;ee' (
orderff 
.ff 
HasBeenConfirmedff &
=ff' (
$strff) ,
;ff, -
_contextgg 
.gg 
Addgg 
(gg 
ordergg "
)gg" #
;gg# $
awaithh 
_contexthh 
.hh 
SaveChangesAsynchh /
(hh/ 0
)hh0 1
;hh1 2
returnii 
RedirectToActionii '
(ii' (
nameofii( .
(ii. /
Indexii/ 4
)ii4 5
)ii5 6
;ii6 7
}jj 
ViewDatakk 
[kk 
$strkk 
]kk  
=kk! "
newkk# &

SelectListkk' 1
(kk1 2
_contextkk2 :
.kk: ;
Userkk; ?
,kk? @
$strkkA E
,kkE F
$strkkG K
,kkK L
orderkkM R
.kkR S
ClientIdkkS [
)kk[ \
;kk\ ]
returnll 
Viewll 
(ll 
orderll 
)ll 
;ll 
}mm 	
publicpp 
asyncpp 
Taskpp 
<pp 
IActionResultpp '
>pp' (
Editpp) -
(pp- .
stringpp. 4
idpp5 7
)pp7 8
{qq 	
ifrr 
(rr 
idrr 
==rr 
nullrr 
)rr 
{ss 
returntt 
NotFoundtt 
(tt  
)tt  !
;tt! "
}uu 
varww 
orderww 
=ww 
awaitww 
_contextww &
.ww& '
Orderww' ,
.ww, -
	FindAsyncww- 6
(ww6 7
idww7 9
)ww9 :
;ww: ;
ifxx 
(xx 
orderxx 
==xx 
nullxx 
)xx 
{yy 
returnzz 
NotFoundzz 
(zz  
)zz  !
;zz! "
}{{ 
ViewData|| 
[|| 
$str|| 
]||  
=||! "
new||# &

SelectList||' 1
(||1 2
_context||2 :
.||: ;
User||; ?
,||? @
$str||A E
,||E F
$str||G K
,||K L
order||M R
.||R S
ClientId||S [
)||[ \
;||\ ]
return}} 
View}} 
(}} 
order}} 
)}} 
;}} 
}~~ 	
[
ÉÉ 	
HttpPost
ÉÉ	 
]
ÉÉ 
[
ÑÑ 	&
ValidateAntiForgeryToken
ÑÑ	 !
]
ÑÑ! "
public
ÖÖ 
async
ÖÖ 
Task
ÖÖ 
<
ÖÖ 
IActionResult
ÖÖ '
>
ÖÖ' (
Edit
ÖÖ) -
(
ÖÖ- .
string
ÖÖ. 4
id
ÖÖ5 7
,
ÖÖ7 8
[
ÖÖ9 :
Bind
ÖÖ: >
(
ÖÖ> ?
$str
ÖÖ? _
)
ÖÖ_ `
]
ÖÖ` a
Order
ÖÖb g
order
ÖÖh m
)
ÖÖm n
{
ÜÜ 	
if
áá 
(
áá 
id
áá 
!=
áá 
order
áá 
.
áá 
OrderId
áá #
)
áá# $
{
àà 
return
ââ 
NotFound
ââ 
(
ââ  
)
ââ  !
;
ââ! "
}
ää 
if
åå 
(
åå 

ModelState
åå 
.
åå 
IsValid
åå "
)
åå" #
{
çç 
try
éé 
{
èè 
_context
êê 
.
êê 
Update
êê #
(
êê# $
order
êê$ )
)
êê) *
;
êê* +
await
ëë 
_context
ëë "
.
ëë" #
SaveChangesAsync
ëë# 3
(
ëë3 4
)
ëë4 5
;
ëë5 6
}
íí 
catch
ìì 
(
ìì *
DbUpdateConcurrencyException
ìì 3
)
ìì3 4
{
îî 
if
ïï 
(
ïï 
!
ïï 
OrderExists
ïï $
(
ïï$ %
order
ïï% *
.
ïï* +
OrderId
ïï+ 2
)
ïï2 3
)
ïï3 4
{
ññ 
return
óó 
NotFound
óó '
(
óó' (
)
óó( )
;
óó) *
}
òò 
else
ôô 
{
öö 
throw
õõ 
;
õõ 
}
úú 
}
ùù 
return
ûû 
RedirectToAction
ûû '
(
ûû' (
nameof
ûû( .
(
ûû. /
Index
ûû/ 4
)
ûû4 5
)
ûû5 6
;
ûû6 7
}
üü 
ViewData
†† 
[
†† 
$str
†† 
]
††  
=
††! "
new
††# &

SelectList
††' 1
(
††1 2
_context
††2 :
.
††: ;
User
††; ?
,
††? @
$str
††A E
,
††E F
$str
††G K
,
††K L
order
††M R
.
††R S
ClientId
††S [
)
††[ \
;
††\ ]
return
°° 
View
°° 
(
°° 
order
°° 
)
°° 
;
°° 
}
¢¢ 	
public
•• 
async
•• 
Task
•• 
<
•• 
IActionResult
•• '
>
••' (
Delete
••) /
(
••/ 0
string
••0 6
id
••7 9
)
••9 :
{
¶¶ 	
if
ßß 
(
ßß 
id
ßß 
==
ßß 
null
ßß 
)
ßß 
{
®® 
return
©© 
NotFound
©© 
(
©©  
)
©©  !
;
©©! "
}
™™ 
var
¨¨ 
order
¨¨ 
=
¨¨ 
await
¨¨ 
_context
¨¨ &
.
¨¨& '
Order
¨¨' ,
.
≠≠ 
Include
≠≠ 
(
≠≠ 
o
≠≠ 
=>
≠≠ 
o
≠≠ 
.
≠≠  
Client
≠≠  &
)
≠≠& '
.
ÆÆ 

FirstAsync
ÆÆ 
(
ÆÆ 
m
ÆÆ 
=>
ÆÆ  
m
ÆÆ! "
.
ÆÆ" #
OrderId
ÆÆ# *
==
ÆÆ+ -
id
ÆÆ. 0
)
ÆÆ0 1
;
ÆÆ1 2
if
ØØ 
(
ØØ 
order
ØØ 
==
ØØ 
null
ØØ 
)
ØØ 
{
∞∞ 
return
±± 
NotFound
±± 
(
±±  
)
±±  !
;
±±! "
}
≤≤ 
return
¥¥ 
View
¥¥ 
(
¥¥ 
order
¥¥ 
)
¥¥ 
;
¥¥ 
}
µµ 	
[
∏∏ 	
HttpPost
∏∏	 
,
∏∏ 

ActionName
∏∏ 
(
∏∏ 
$str
∏∏ &
)
∏∏& '
]
∏∏' (
[
ππ 	&
ValidateAntiForgeryToken
ππ	 !
]
ππ! "
public
∫∫ 
async
∫∫ 
Task
∫∫ 
<
∫∫ 
IActionResult
∫∫ '
>
∫∫' (
DeleteConfirmed
∫∫) 8
(
∫∫8 9
string
∫∫9 ?
id
∫∫@ B
)
∫∫B C
{
ªª 	
var
ºº 
order
ºº 
=
ºº 
await
ºº 
_context
ºº &
.
ºº& '
Order
ºº' ,
.
ºº, -
	FindAsync
ºº- 6
(
ºº6 7
id
ºº7 9
)
ºº9 :
;
ºº: ;
order
ΩΩ 
.
ΩΩ 
HasBeenConfirmed
ΩΩ "
=
ΩΩ# $
$str
ΩΩ% (
;
ΩΩ( )
order
ææ 
.
ææ 
HasBeenPlaced
ææ 
=
ææ  !
$num
ææ" #
;
ææ# $
await
øø 
_context
øø 
.
øø 
SaveChangesAsync
øø +
(
øø+ ,
)
øø, -
;
øø- .
return
¿¿ 
RedirectToAction
¿¿ #
(
¿¿# $
nameof
¿¿$ *
(
¿¿* +
IndexBasket
¿¿+ 6
)
¿¿6 7
)
¿¿7 8
;
¿¿8 9
}
¡¡ 	
private
√√ 
bool
√√ 
OrderExists
√√  
(
√√  !
string
√√! '
id
√√( *
)
√√* +
{
ƒƒ 	
return
≈≈ 
_context
≈≈ 
.
≈≈ 
Order
≈≈ !
.
≈≈! "
Any
≈≈" %
(
≈≈% &
e
≈≈& '
=>
≈≈( *
e
≈≈+ ,
.
≈≈, -
OrderId
≈≈- 4
==
≈≈5 7
id
≈≈8 :
)
≈≈: ;
;
≈≈; <
}
∆∆ 	
[
»» 	

ActionName
»»	 
(
»» 
$str
»» "
)
»»" #
]
»»# $
public
…… 
async
…… 
Task
…… 
<
…… 
IActionResult
…… '
>
……' (
ConfirmOrder
……) 5
(
……5 6
string
……6 <
id
……= ?
)
……? @
{
   	
var
ÀÀ 
order
ÀÀ 
=
ÀÀ 
await
ÀÀ 
_context
ÀÀ &
.
ÀÀ& '
Order
ÀÀ' ,
.
ÀÀ, -
	FindAsync
ÀÀ- 6
(
ÀÀ6 7
id
ÀÀ7 9
)
ÀÀ9 :
;
ÀÀ: ;
order
ÃÃ 
.
ÃÃ 
HasBeenConfirmed
ÃÃ "
=
ÃÃ# $
$str
ÃÃ% (
;
ÃÃ( )
_context
ÕÕ 
.
ÕÕ 
Update
ÕÕ 
(
ÕÕ 
order
ÕÕ !
)
ÕÕ! "
;
ÕÕ" #
await
ŒŒ 
_context
ŒŒ 
.
ŒŒ 
SaveChangesAsync
ŒŒ +
(
ŒŒ+ ,
)
ŒŒ, -
;
ŒŒ- .
return
œœ 
RedirectToAction
œœ #
(
œœ# $
nameof
œœ$ *
(
œœ* +
Index
œœ+ 0
)
œœ0 1
)
œœ1 2
;
œœ2 3
}
–– 	
[
““ 	

ActionName
““	 
(
““ 
$str
““  
)
““  !
]
““! "
public
”” 
async
”” 
Task
”” 
<
”” 
IActionResult
”” '
>
””' (

PlaceOrder
””) 3
(
””3 4
string
””4 :
id
””; =
)
””= >
{
‘‘ 	
var
’’ 
order
’’ 
=
’’ 
await
’’ 
_context
’’ &
.
’’& '
Order
’’' ,
.
’’, -
	FindAsync
’’- 6
(
’’6 7
id
’’7 9
)
’’9 :
;
’’: ;
order
÷÷ 
.
÷÷ 
HasBeenPlaced
÷÷ 
=
÷÷  !
$num
÷÷" #
;
÷÷# $
_context
◊◊ 
.
◊◊ 
Update
◊◊ 
(
◊◊ 
order
◊◊ !
)
◊◊! "
;
◊◊" #
await
ÿÿ 
_context
ÿÿ 
.
ÿÿ 
SaveChangesAsync
ÿÿ +
(
ÿÿ+ ,
)
ÿÿ, -
;
ÿÿ- .
return
ŸŸ 
RedirectToAction
ŸŸ #
(
ŸŸ# $
nameof
ŸŸ$ *
(
ŸŸ* +
IndexBasket
ŸŸ+ 6
)
ŸŸ6 7
)
ŸŸ7 8
;
ŸŸ8 9
}
⁄⁄ 	
[
‹‹ 	

ActionName
‹‹	 
(
‹‹ 
$str
‹‹ $
)
‹‹$ %
]
‹‹% &
public
›› 
async
›› 
Task
›› 
<
›› 
IActionResult
›› '
>
››' (
DecrementOrder
››) 7
(
››7 8
string
››8 >
id
››? A
)
››A B
{
ﬁﬁ 	
var
ﬂﬂ 
order
ﬂﬂ 
=
ﬂﬂ 
await
ﬂﬂ 
_context
ﬂﬂ &
.
ﬂﬂ& '
Order
ﬂﬂ' ,
.
ﬂﬂ, -
	FindAsync
ﬂﬂ- 6
(
ﬂﬂ6 7
id
ﬂﬂ7 9
)
ﬂﬂ9 :
;
ﬂﬂ: ;
if
‡‡ 
(
‡‡ 
$num
‡‡ 
<
‡‡ 
order
‡‡ 
.
‡‡ 
Quantity
‡‡ "
)
‡‡" #
{
·· 
order
‚‚ 
.
‚‚ 
Quantity
‚‚ 
--
‚‚  
;
‚‚  !
_context
„„ 
.
„„ 
Update
„„ 
(
„„  
order
„„  %
)
„„% &
;
„„& '
await
‰‰ 
_context
‰‰ 
.
‰‰ 
SaveChangesAsync
‰‰ /
(
‰‰/ 0
)
‰‰0 1
;
‰‰1 2
}
ÂÂ 
return
ÊÊ 
RedirectToAction
ÊÊ #
(
ÊÊ# $
nameof
ÊÊ$ *
(
ÊÊ* +
IndexBasket
ÊÊ+ 6
)
ÊÊ6 7
)
ÊÊ7 8
;
ÊÊ8 9
}
ÁÁ 	
[
ÈÈ 	

ActionName
ÈÈ	 
(
ÈÈ 
$str
ÈÈ $
)
ÈÈ$ %
]
ÈÈ% &
public
ÍÍ 
async
ÍÍ 
Task
ÍÍ 
<
ÍÍ 
IActionResult
ÍÍ '
>
ÍÍ' (
IncrementOrder
ÍÍ) 7
(
ÍÍ7 8
string
ÍÍ8 >
id
ÍÍ? A
)
ÍÍA B
{
ÎÎ 	
var
ÏÏ 
order
ÏÏ 
=
ÏÏ 
await
ÏÏ 
_context
ÏÏ &
.
ÏÏ& '
Order
ÏÏ' ,
.
ÏÏ, -
	FindAsync
ÏÏ- 6
(
ÏÏ6 7
id
ÏÏ7 9
)
ÏÏ9 :
;
ÏÏ: ;
order
ÌÌ 
.
ÌÌ 
Quantity
ÌÌ 
++
ÌÌ 
;
ÌÌ 
_context
ÓÓ 
.
ÓÓ 
Update
ÓÓ 
(
ÓÓ 
order
ÓÓ !
)
ÓÓ! "
;
ÓÓ" #
await
ÔÔ 
_context
ÔÔ 
.
ÔÔ 
SaveChangesAsync
ÔÔ +
(
ÔÔ+ ,
)
ÔÔ, -
;
ÔÔ- .
return
 
RedirectToAction
 #
(
# $
nameof
$ *
(
* +
IndexBasket
+ 6
)
6 7
)
7 8
;
8 9
}
ÒÒ 	
}
ÚÚ 
}ÛÛ ôm
ëE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Controllers\ProductCategoriesController.cs
	namespace		 	&
Ecommerce_proiect_an4_sem1		
 $
.		$ %
Controllers		% 0
{

 
public 

class '
ProductCategoriesController ,
:- .

Controller/ 9
{ 
private 
readonly 
EcommerceContext )
_context* 2
;2 3
public '
ProductCategoriesController *
(* +
EcommerceContext+ ;
context< C
)C D
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
IActionResult '
>' (
Index) .
(. /
)/ 0
{ 	
var 
ecommerceContext  
=! "
_context# +
.+ ,
ProductCategory, ;
.; <
Include< C
(C D
pD E
=>F H
pI J
.J K
CategoryK S
)S T
.T U
IncludeU \
(\ ]
p] ^
=>_ a
pb c
.c d
Productd k
)k l
;l m
return 
View 
( 
await 
ecommerceContext .
.. /
ToListAsync/ :
(: ;
); <
)< =
;= >
} 	
public 
async 
Task 
< 
IActionResult '
>' (
Details) 0
(0 1
string1 7
id8 :
): ;
{ 	
if 
( 
null 
== 
id 
) 
{ 
return   
NotFound   
(    
)    !
;  ! "
}!! 
var## 
productCategory## 
=##  !
await##" '
_context##( 0
.##0 1
ProductCategory##1 @
.$$ 
Include$$ 
($$ 
p$$ 
=>$$ 
p$$ 
.$$  
Category$$  (
)$$( )
.%% 
Include%% 
(%% 
p%% 
=>%% 
p%% 
.%%  
Product%%  '
)%%' (
.&& 
FirstOrDefaultAsync&& $
(&&$ %
m&&% &
=>&&' )
m&&* +
.&&+ ,
IdProductCategory&&, =
==&&> @
id&&A C
)&&C D
;&&D E
if'' 
('' 
productCategory'' 
==''  "
null''# '
)''' (
{(( 
return)) 
NotFound)) 
())  
)))  !
;))! "
}** 
return,, 
View,, 
(,, 
productCategory,, '
),,' (
;,,( )
}-- 	
public00 
IActionResult00 
Create00 #
(00# $
)00$ %
{11 	
ViewData22 
[22 
$str22 !
]22! "
=22# $
new22% (

SelectList22) 3
(223 4
_context224 <
.22< =
Category22= E
,22E F
$str22G S
,22S T
$str22U c
)22c d
;22d e
ViewData33 
[33 
$str33  
]33  !
=33" #
new33$ '

SelectList33( 2
(332 3
_context333 ;
.33; <
Product33< C
,33C D
$str33E P
,33P Q
$str33R _
)33_ `
;33` a
return44 
View44 
(44 
)44 
;44 
}55 	
[:: 	
HttpPost::	 
]:: 
[;; 	$
ValidateAntiForgeryToken;;	 !
];;! "
public<< 
async<< 
Task<< 
<<< 
IActionResult<< '
><<' (
Create<<) /
(<</ 0
[<<0 1
Bind<<1 5
(<<5 6
$str<<6 L
)<<L M
]<<M N
ProductCategory<<O ^
productCategory<<_ n
)<<n o
{== 	
if>> 
(>> 

ModelState>> 
.>> 
IsValid>> "
)>>" #
{?? 
productCategory@@ 
.@@  
IdProductCategory@@  1
=@@2 3
Guid@@4 8
.@@8 9
NewGuid@@9 @
(@@@ A
)@@A B
.@@B C
ToString@@C K
(@@K L
)@@L M
;@@M N
_contextAA 
.AA 
AddAA 
(AA 
productCategoryAA ,
)AA, -
;AA- .
awaitBB 
_contextBB 
.BB 
SaveChangesAsyncBB /
(BB/ 0
)BB0 1
;BB1 2
returnCC 
RedirectToActionCC '
(CC' (
nameofCC( .
(CC. /
IndexCC/ 4
)CC4 5
)CC5 6
;CC6 7
}DD 
ViewDataEE 
[EE 
$strEE !
]EE! "
=EE# $
newEE% (

SelectListEE) 3
(EE3 4
_contextEE4 <
.EE< =
CategoryEE= E
,EEE F
$strEEG S
,EES T
$strEEU c
,EEc d
productCategoryEEe t
.EEt u

CategoryIdEEu 
)	EE Ä
;
EEÄ Å
ViewDataFF 
[FF 
$strFF  
]FF  !
=FF" #
newFF$ '

SelectListFF( 2
(FF2 3
_contextFF3 ;
.FF; <
ProductFF< C
,FFC D
$strFFE P
,FFP Q
$strFFR _
,FF_ `
productCategoryFFa p
.FFp q
	ProductIdFFq z
)FFz {
;FF{ |
returnGG 
ViewGG 
(GG 
productCategoryGG '
)GG' (
;GG( )
}HH 	
publicKK 
asyncKK 
TaskKK 
<KK 
IActionResultKK '
>KK' (
EditKK) -
(KK- .
stringKK. 4
idKK5 7
)KK7 8
{LL 	
ifMM 
(MM 
idMM 
==MM 
nullMM 
)MM 
{NN 
returnOO 
NotFoundOO 
(OO  
)OO  !
;OO! "
}PP 
varRR 
productCategoryRR 
=RR  !
awaitRR" '
_contextRR( 0
.RR0 1
ProductCategoryRR1 @
.RR@ A
	FindAsyncRRA J
(RRJ K
idRRK M
)RRM N
;RRN O
ifSS 
(SS 
productCategorySS 
==SS  "
nullSS# '
)SS' (
{TT 
returnUU 
NotFoundUU 
(UU  
)UU  !
;UU! "
}VV 
ViewDataWW 
[WW 
$strWW !
]WW! "
=WW# $
newWW% (

SelectListWW) 3
(WW3 4
_contextWW4 <
.WW< =
CategoryWW= E
,WWE F
$strWWG S
,WWS T
$strWWU c
,WWc d
productCategoryWWe t
.WWt u

CategoryIdWWu 
)	WW Ä
;
WWÄ Å
ViewDataXX 
[XX 
$strXX  
]XX  !
=XX" #
newXX$ '

SelectListXX( 2
(XX2 3
_contextXX3 ;
.XX; <
ProductXX< C
,XXC D
$strXXE P
,XXP Q
$strXXR _
,XX_ `
productCategoryXXa p
.XXp q
	ProductIdXXq z
)XXz {
;XX{ |
returnYY 
ViewYY 
(YY 
productCategoryYY '
)YY' (
;YY( )
}ZZ 	
[__ 	
HttpPost__	 
]__ 
[`` 	$
ValidateAntiForgeryToken``	 !
]``! "
publicaa 
asyncaa 
Taskaa 
<aa 
IActionResultaa '
>aa' (
Editaa) -
(aa- .
stringaa. 4
idaa5 7
,aa7 8
[aa9 :
Bindaa: >
(aa> ?
$straa? g
)aag h
]aah i
ProductCategoryaaj y
productCategory	aaz â
)
aaâ ä
{bb 	
ifcc 
(cc 
idcc 
!=cc 
productCategorycc %
.cc% &
IdProductCategorycc& 7
)cc7 8
{dd 
returnee 
NotFoundee 
(ee  
)ee  !
;ee! "
}ff 
ifhh 
(hh 

ModelStatehh 
.hh 
IsValidhh "
)hh" #
{ii 
tryjj 
{kk 
_contextll 
.ll 
Updatell #
(ll# $
productCategoryll$ 3
)ll3 4
;ll4 5
awaitmm 
_contextmm "
.mm" #
SaveChangesAsyncmm# 3
(mm3 4
)mm4 5
;mm5 6
}nn 
catchoo 
(oo (
DbUpdateConcurrencyExceptionoo 3
)oo3 4
{pp 
ifqq 
(qq 
!qq !
ProductCategoryExistsqq .
(qq. /
productCategoryqq/ >
.qq> ?
IdProductCategoryqq? P
)qqP Q
)qqQ R
{rr 
returnss 
NotFoundss '
(ss' (
)ss( )
;ss) *
}tt 
elseuu 
{vv 
throwww 
;ww 
}xx 
}yy 
returnzz 
RedirectToActionzz '
(zz' (
nameofzz( .
(zz. /
Indexzz/ 4
)zz4 5
)zz5 6
;zz6 7
}{{ 
ViewData|| 
[|| 
$str|| !
]||! "
=||# $
new||% (

SelectList||) 3
(||3 4
_context||4 <
.||< =
Category||= E
,||E F
$str||G S
,||S T
$str||U c
,||c d
productCategory||e t
.||t u

CategoryId||u 
)	|| Ä
;
||Ä Å
ViewData}} 
[}} 
$str}}  
]}}  !
=}}" #
new}}$ '

SelectList}}( 2
(}}2 3
_context}}3 ;
.}}; <
Product}}< C
,}}C D
$str}}E P
,}}P Q
$str}}R _
,}}_ `
productCategory}}a p
.}}p q
	ProductId}}q z
)}}z {
;}}{ |
return~~ 
View~~ 
(~~ 
productCategory~~ '
)~~' (
;~~( )
} 	
public
ÇÇ 
async
ÇÇ 
Task
ÇÇ 
<
ÇÇ 
IActionResult
ÇÇ '
>
ÇÇ' (
Delete
ÇÇ) /
(
ÇÇ/ 0
string
ÇÇ0 6
id
ÇÇ7 9
)
ÇÇ9 :
{
ÉÉ 	
if
ÑÑ 
(
ÑÑ 
id
ÑÑ 
==
ÑÑ 
null
ÑÑ 
)
ÑÑ 
{
ÖÖ 
return
ÜÜ 
NotFound
ÜÜ 
(
ÜÜ  
)
ÜÜ  !
;
ÜÜ! "
}
áá 
var
ââ 
productCategory
ââ 
=
ââ  !
await
ââ" '
_context
ââ( 0
.
ââ0 1
ProductCategory
ââ1 @
.
ää 
Include
ää 
(
ää 
p
ää 
=>
ää 
p
ää 
.
ää  
Category
ää  (
)
ää( )
.
ãã 
Include
ãã 
(
ãã 
p
ãã 
=>
ãã 
p
ãã 
.
ãã  
Product
ãã  '
)
ãã' (
.
åå 

FirstAsync
åå 
(
åå 
m
åå 
=>
åå  
m
åå! "
.
åå" #
IdProductCategory
åå# 4
==
åå5 7
id
åå8 :
)
åå: ;
;
åå; <
if
çç 
(
çç 
productCategory
çç 
==
çç  "
null
çç# '
)
çç' (
{
éé 
return
èè 
NotFound
èè 
(
èè  
)
èè  !
;
èè! "
}
êê 
return
íí 
View
íí 
(
íí 
productCategory
íí '
)
íí' (
;
íí( )
}
ìì 	
[
ññ 	
HttpPost
ññ	 
,
ññ 

ActionName
ññ 
(
ññ 
$str
ññ &
)
ññ& '
]
ññ' (
[
óó 	&
ValidateAntiForgeryToken
óó	 !
]
óó! "
public
òò 
async
òò 
Task
òò 
<
òò 
IActionResult
òò '
>
òò' (
DeleteConfirmed
òò) 8
(
òò8 9
string
òò9 ?
id
òò@ B
)
òòB C
{
ôô 	
var
öö 
productCategory
öö 
=
öö  !
await
öö" '
_context
öö( 0
.
öö0 1
ProductCategory
öö1 @
.
öö@ A
	FindAsync
ööA J
(
ööJ K
id
ööK M
)
ööM N
;
ööN O
_context
õõ 
.
õõ 
ProductCategory
õõ $
.
õõ$ %
Remove
õõ% +
(
õõ+ ,
productCategory
õõ, ;
)
õõ; <
;
õõ< =
await
úú 
_context
úú 
.
úú 
SaveChangesAsync
úú +
(
úú+ ,
)
úú, -
;
úú- .
return
ùù 
RedirectToAction
ùù #
(
ùù# $
nameof
ùù$ *
(
ùù* +
Index
ùù+ 0
)
ùù0 1
)
ùù1 2
;
ùù2 3
}
ûû 	
private
†† 
bool
†† #
ProductCategoryExists
†† *
(
††* +
string
††+ 1
id
††2 4
)
††4 5
{
°° 	
return
¢¢ 
_context
¢¢ 
.
¢¢ 
ProductCategory
¢¢ +
.
¢¢+ ,
Any
¢¢, /
(
¢¢/ 0
e
¢¢0 1
=>
¢¢2 4
e
¢¢5 6
.
¢¢6 7
IdProductCategory
¢¢7 H
==
¢¢I K
id
¢¢L N
)
¢¢N O
;
¢¢O P
}
££ 	
}
§§ 
}•• –j
çE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Controllers\ProductOrdersController.cs
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
.$ %
Controllers% 0
{		 
public

 

class

 #
ProductOrdersController

 (
:

) *

Controller

+ 5
{ 
private 
readonly 
EcommerceContext )
_context* 2
;2 3
public #
ProductOrdersController &
(& '
EcommerceContext' 7
context8 ?
)? @
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
IActionResult '
>' (
Index) .
(. /
)/ 0
{ 	
var 
ecommerceContext  
=! "
_context# +
.+ ,
ProductOrder, 8
.8 9
Include9 @
(@ A
pA B
=>C E
pF G
.G H
OrderIdFkNavigationH [
)[ \
.\ ]
Include] d
(d e
pe f
=>g i
pj k
.k l"
ProductIdFkNavigation	l Å
)
Å Ç
;
Ç É
return 
View 
( 
await 
ecommerceContext .
.. /
ToListAsync/ :
(: ;
); <
)< =
;= >
} 	
public 
async 
Task 
< 
IActionResult '
>' (
Details) 0
(0 1
string1 7
id8 :
): ;
{ 	
if 
( 
null 
== 
id 
) 
{ 
return 
NotFound 
(  
)  !
;! "
}   
var"" 
productOrder"" 
="" 
await"" $
_context""% -
.""- .
ProductOrder"". :
.## 
Include## 
(## 
p## 
=>## 
p## 
.##  
OrderIdFkNavigation##  3
)##3 4
.$$ 
Include$$ 
($$ 
p$$ 
=>$$ 
p$$ 
.$$  !
ProductIdFkNavigation$$  5
)$$5 6
.%% 
FirstOrDefaultAsync%% $
(%%$ %
m%%% &
=>%%' )
m%%* +
.%%+ ,
IdProductOrder%%, :
==%%; =
id%%> @
)%%@ A
;%%A B
if&& 
(&& 
productOrder&& 
==&& 
null&&  $
)&&$ %
{'' 
return(( 
NotFound(( 
(((  
)((  !
;((! "
})) 
return++ 
View++ 
(++ 
productOrder++ $
)++$ %
;++% &
},, 	
public// 
IActionResult// 
Create// #
(//# $
)//$ %
{00 	
ViewData11 
[11 
$str11  
]11  !
=11" #
new11$ '

SelectList11( 2
(112 3
_context113 ;
.11; <
Order11< A
,11A B
$str11C L
,11L M
$str11N W
)11W X
;11X Y
ViewData22 
[22 
$str22 "
]22" #
=22$ %
new22& )

SelectList22* 4
(224 5
_context225 =
.22= >
Product22> E
,22E F
$str22G R
,22R S
$str22T _
)22_ `
;22` a
return33 
View33 
(33 
)33 
;33 
}44 	
[99 	
HttpPost99	 
]99 
[:: 	$
ValidateAntiForgeryToken::	 !
]::! "
public;; 
async;; 
Task;; 
<;; 
IActionResult;; '
>;;' (
Create;;) /
(;;/ 0
[;;0 1
Bind;;1 5
(;;5 6
$str;;6 \
);;\ ]
];;] ^
ProductOrder;;_ k
productOrder;;l x
);;x y
{<< 	
if== 
(== 

ModelState== 
.== 
IsValid== "
)==" #
{>> 
_context?? 
.?? 
Add?? 
(?? 
productOrder?? )
)??) *
;??* +
await@@ 
_context@@ 
.@@ 
SaveChangesAsync@@ /
(@@/ 0
)@@0 1
;@@1 2
returnAA 
RedirectToActionAA '
(AA' (
nameofAA( .
(AA. /
IndexAA/ 4
)AA4 5
)AA5 6
;AA6 7
}BB 
ViewDataCC 
[CC 
$strCC  
]CC  !
=CC" #
newCC$ '

SelectListCC( 2
(CC2 3
_contextCC3 ;
.CC; <
OrderCC< A
,CCA B
$strCCC L
,CCL M
$strCCN W
,CCW X
productOrderCCY e
.CCe f
	OrderIdFkCCf o
)CCo p
;CCp q
ViewDataDD 
[DD 
$strDD "
]DD" #
=DD$ %
newDD& )

SelectListDD* 4
(DD4 5
_contextDD5 =
.DD= >
ProductDD> E
,DDE F
$strDDG R
,DDR S
$strDDT _
,DD_ `
productOrderDDa m
.DDm n
ProductIdFkDDn y
)DDy z
;DDz {
returnEE 
ViewEE 
(EE 
productOrderEE $
)EE$ %
;EE% &
}FF 	
publicII 
asyncII 
TaskII 
<II 
IActionResultII '
>II' (
EditII) -
(II- .
stringII. 4
idII5 7
)II7 8
{JJ 	
ifKK 
(KK 
idKK 
==KK 
nullKK 
)KK 
{LL 
returnMM 
NotFoundMM 
(MM  
)MM  !
;MM! "
}NN 
varPP 
productOrderPP 
=PP 
awaitPP $
_contextPP% -
.PP- .
ProductOrderPP. :
.PP: ;
	FindAsyncPP; D
(PPD E
idPPE G
)PPG H
;PPH I
ifQQ 
(QQ 
productOrderQQ 
==QQ 
nullQQ  $
)QQ$ %
{RR 
returnSS 
NotFoundSS 
(SS  
)SS  !
;SS! "
}TT 
ViewDataUU 
[UU 
$strUU  
]UU  !
=UU" #
newUU$ '

SelectListUU( 2
(UU2 3
_contextUU3 ;
.UU; <
OrderUU< A
,UUA B
$strUUC L
,UUL M
$strUUN W
,UUW X
productOrderUUY e
.UUe f
	OrderIdFkUUf o
)UUo p
;UUp q
ViewDataVV 
[VV 
$strVV "
]VV" #
=VV$ %
newVV& )

SelectListVV* 4
(VV4 5
_contextVV5 =
.VV= >
ProductVV> E
,VVE F
$strVVG R
,VVR S
$strVVT _
,VV_ `
productOrderVVa m
.VVm n
ProductIdFkVVn y
)VVy z
;VVz {
returnWW 
ViewWW 
(WW 
productOrderWW $
)WW$ %
;WW% &
}XX 	
[]] 	
HttpPost]]	 
]]] 
[^^ 	$
ValidateAntiForgeryToken^^	 !
]^^! "
public__ 
async__ 
Task__ 
<__ 
IActionResult__ '
>__' (
Edit__) -
(__- .
string__. 4
id__5 7
,__7 8
[__9 :
Bind__: >
(__> ?
$str__? e
)__e f
]__f g
ProductOrder__h t
productOrder	__u Å
)
__Å Ç
{`` 	
ifaa 
(aa 
idaa 
!=aa 
productOrderaa "
.aa" #
IdProductOrderaa# 1
)aa1 2
{bb 
returncc 
NotFoundcc 
(cc  
)cc  !
;cc! "
}dd 
ifff 
(ff 

ModelStateff 
.ff 
IsValidff "
)ff" #
{gg 
tryhh 
{ii 
_contextjj 
.jj 
Updatejj #
(jj# $
productOrderjj$ 0
)jj0 1
;jj1 2
awaitkk 
_contextkk "
.kk" #
SaveChangesAsynckk# 3
(kk3 4
)kk4 5
;kk5 6
}ll 
catchmm 
(mm (
DbUpdateConcurrencyExceptionmm 3
)mm3 4
{nn 
ifoo 
(oo 
!oo 
ProductOrderExistsoo +
(oo+ ,
productOrderoo, 8
.oo8 9
IdProductOrderoo9 G
)ooG H
)ooH I
{pp 
returnqq 
NotFoundqq '
(qq' (
)qq( )
;qq) *
}rr 
elsess 
{tt 
throwuu 
;uu 
}vv 
}ww 
returnxx 
RedirectToActionxx '
(xx' (
nameofxx( .
(xx. /
Indexxx/ 4
)xx4 5
)xx5 6
;xx6 7
}yy 
ViewDatazz 
[zz 
$strzz  
]zz  !
=zz" #
newzz$ '

SelectListzz( 2
(zz2 3
_contextzz3 ;
.zz; <
Orderzz< A
,zzA B
$strzzC L
,zzL M
$strzzN W
,zzW X
productOrderzzY e
.zze f
	OrderIdFkzzf o
)zzo p
;zzp q
ViewData{{ 
[{{ 
$str{{ "
]{{" #
={{$ %
new{{& )

SelectList{{* 4
({{4 5
_context{{5 =
.{{= >
Product{{> E
,{{E F
$str{{G R
,{{R S
$str{{T _
,{{_ `
productOrder{{a m
.{{m n
ProductIdFk{{n y
){{y z
;{{z {
return|| 
View|| 
(|| 
productOrder|| $
)||$ %
;||% &
}}} 	
public
ÄÄ 
async
ÄÄ 
Task
ÄÄ 
<
ÄÄ 
IActionResult
ÄÄ '
>
ÄÄ' (
Delete
ÄÄ) /
(
ÄÄ/ 0
string
ÄÄ0 6
id
ÄÄ7 9
)
ÄÄ9 :
{
ÅÅ 	
if
ÇÇ 
(
ÇÇ 
id
ÇÇ 
==
ÇÇ 
null
ÇÇ 
)
ÇÇ 
{
ÉÉ 
return
ÑÑ 
NotFound
ÑÑ 
(
ÑÑ  
)
ÑÑ  !
;
ÑÑ! "
}
ÖÖ 
var
áá 
productOrder
áá 
=
áá 
await
áá $
_context
áá% -
.
áá- .
ProductOrder
áá. :
.
àà 
Include
àà 
(
àà 
p
àà 
=>
àà 
p
àà 
.
àà  !
OrderIdFkNavigation
àà  3
)
àà3 4
.
ââ 
Include
ââ 
(
ââ 
p
ââ 
=>
ââ 
p
ââ 
.
ââ  #
ProductIdFkNavigation
ââ  5
)
ââ5 6
.
ää 

FirstAsync
ää 
(
ää 
m
ää 
=>
ää  
m
ää! "
.
ää" #
IdProductOrder
ää# 1
==
ää2 4
id
ää5 7
)
ää7 8
;
ää8 9
if
ãã 
(
ãã 
productOrder
ãã 
==
ãã 
null
ãã  $
)
ãã$ %
{
åå 
return
çç 
NotFound
çç 
(
çç  
)
çç  !
;
çç! "
}
éé 
return
êê 
View
êê 
(
êê 
productOrder
êê $
)
êê$ %
;
êê% &
}
ëë 	
[
îî 	
HttpPost
îî	 
,
îî 

ActionName
îî 
(
îî 
$str
îî &
)
îî& '
]
îî' (
[
ïï 	&
ValidateAntiForgeryToken
ïï	 !
]
ïï! "
public
ññ 
async
ññ 
Task
ññ 
<
ññ 
IActionResult
ññ '
>
ññ' (
DeleteConfirmed
ññ) 8
(
ññ8 9
string
ññ9 ?
id
ññ@ B
)
ññB C
{
óó 	
var
òò 
productOrder
òò 
=
òò 
await
òò $
_context
òò% -
.
òò- .
ProductOrder
òò. :
.
òò: ;
	FindAsync
òò; D
(
òòD E
id
òòE G
)
òòG H
;
òòH I
_context
ôô 
.
ôô 
ProductOrder
ôô !
.
ôô! "
Remove
ôô" (
(
ôô( )
productOrder
ôô) 5
)
ôô5 6
;
ôô6 7
await
öö 
_context
öö 
.
öö 
SaveChangesAsync
öö +
(
öö+ ,
)
öö, -
;
öö- .
return
õõ 
RedirectToAction
õõ #
(
õõ# $
nameof
õõ$ *
(
õõ* +
Index
õõ+ 0
)
õõ0 1
)
õõ1 2
;
õõ2 3
}
úú 	
private
ûû 
bool
ûû  
ProductOrderExists
ûû '
(
ûû' (
string
ûû( .
id
ûû/ 1
)
ûû1 2
{
üü 	
return
†† 
_context
†† 
.
†† 
ProductOrder
†† (
.
††( )
Any
††) ,
(
††, -
e
††- .
=>
††/ 1
e
††2 3
.
††3 4
IdProductOrder
††4 B
==
††C E
id
††F H
)
††H I
;
††I J
}
°° 	
}
¢¢ 
}££ æË
àE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Controllers\ProductsController.cs
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
.$ %
Controllers% 0
{ 
public 

class 
ProductsController #
:$ %

Controller& 0
{ 
private 
readonly 
EcommerceContext )
_context* 2
;2 3
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
public 
ProductsController !
(! "
EcommerceContext" 2
context3 :
,: ; 
IHttpContextAccessor< P
httpContextAccessorQ d
)d e
{ 	
_context 
= 
context 
;  
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7
} 	
public 
async 
Task 
< 
IActionResult '
>' (
Index) .
(. /
string/ 5
searchString6 B
,B C
decimalD K
price1L R
,R S
decimalT [
price2\ b
,b c
stringd j
categoryk s
)s t
{ 	
var 
stocks 
= 
from 
m 
in  "
_context# +
.+ ,

StockEntry, 6
select7 =
m> ?
;? @
var 
products 
= 
from 
m  !
in" $
_context% -
.- .
Product. 5
.5 6
Include6 =
(= >
o> ?
=>@ B
oC D
.D E
ProductCategoryE T
)T U
.U V
ThenIncludeV a
(a b
zb c
=>d f
zg h
.h i
Categoryi q
)q r
.r s
OrderBys z
(z {
x{ |
=>} 
x
Ä Å
.
Å Ç
ProductName
Ç ç
)
ç é
select !
m" #
;# $
foreach!! 
(!! 
var!! 
stock!! 
in!!  
stocks!!! '
)!!' (
{"" 
foreach## 
(## 
var## 
prod##  
in##! #
products##$ ,
)##, -
{$$ 
if%% 
(%% 
(%% 
stock%% 
.%% 
	ProductId%% '
==%%( *
prod%%+ /
.%%/ 0
	ProductId%%0 9
)%%9 :
&&%%; =
(%%> ?
stock%%? D
.%%D E
RemainingStock%%E S
<=%%T V
$num%%W X
)%%X Y
)%%Y Z
{&& 
products''  
=''! "
products''# +
.''+ ,
Where'', 1
(''1 2
q''2 3
=>''4 6
!''7 8
q''8 9
.''9 :
Equals'': @
(''@ A
prod''A E
)''E F
)''F G
;''G H
}(( 
})) 
}** 
dynamic++ 
mymodel++ 
=++ 
new++ !
ExpandoObject++" /
(++/ 0
)++0 1
;++1 2
mymodel-- 
.-- 

Categoryes-- 
=--  
from--! %
m--& '
in--( *
_context--+ 3
.--3 4
Category--4 <
select--= C
m--D E
;--E F
products// 
=// !
filterProductsByPrice// ,
(//, -
products//- 5
,//5 6
searchString//7 C
,//C D
price1//E K
,//K L
price2//M S
)//S T
;//T U
if11 
(11 
!11 
String11 
.11 
IsNullOrEmpty11 %
(11% &
category11& .
)11. /
)11/ 0
{22 
List33 
<33 
Product33 
>33 
prod33 "
=33# $
new33% (
List33) -
<33- .
Product33. 5
>335 6
(336 7
)337 8
;338 9
var44 
categoryIds44 
=44  !
from44" &
m44' (
in44) +
_context44, 4
.444 5
ProductCategory445 D
.44D E
Where44E J
(44J K
s44K L
=>44M O
s44P Q
.44Q R
Category44R Z
.44Z [
CategoryName44[ g
.44g h
Equals44h n
(44n o
category44o w
)44w x
)44x y
select	44z Ä
m
44Å Ç
;
44Ç É
foreach55 
(55 
var55 

categoryId55 &
in55' )
categoryIds55* 5
)555 6
{66 
var77 
filteredProducts77 (
=77) *
products77+ 3
.773 4
Where774 9
(779 :
s77: ;
=>77< >
s77? @
.77@ A
ProductCategory77A P
.77P Q
Contains77Q Y
(77Y Z

categoryId77Z d
)77d e
)77e f
;77f g
foreach88 
(88 
var88  
p88! "
in88# %
filteredProducts88& 6
)886 7
{99 
prod:: 
.:: 
Add::  
(::  !
p::! "
)::" #
;::# $
};; 
}<< 
mymodel== 
.== 
Products==  
===! "
prod==# '
;==' (
return>> 
View>> 
(>> 
mymodel>> #
)>># $
;>>$ %
}?? 
await@@ 
products@@ 
.@@ 
ToListAsync@@ &
(@@& '
)@@' (
;@@( )
mymodelCC 
.CC 
ProductsCC 
=CC 
productsCC  (
;CC( )
returnDD 
ViewDD 
(DD 
mymodelDD 
)DD  
;DD  !
}EE 	
privateGG 

IQueryableGG 
<GG 
ProductGG "
>GG" #!
filterProductsByPriceGG$ 9
(GG9 :

IQueryableGG: D
<GGD E
ProductGGE L
>GGL M
productsGGN V
,GGV W
stringGGX ^
searchStringGG_ k
,GGk l
decimalGGm t
price1GGu {
,GG{ |
decimal	GG} Ñ
price2
GGÖ ã
)
GGã å
{HH 	
ifII 
(II 
!II 
StringII 
.II 
IsNullOrEmptyII %
(II% &
searchStringII& 2
)II2 3
)II3 4
{JJ 
productsKK 
=KK 
productsKK #
.KK# $
WhereKK$ )
(KK) *
sKK* +
=>KK, .
sKK/ 0
.KK0 1
ProductNameKK1 <
.KK< =
ContainsKK= E
(KKE F
searchStringKKF R
)KKR S
)KKS T
;KKT U
}LL 
ifMM 
(MM 
price1MM 
!=MM 
$numMM 
)MM 
{NN 
productsOO 
=OO 
productsOO #
.OO# $
WhereOO$ )
(OO) *
sOO* +
=>OO, .
sOO/ 0
.OO0 1
PriceOO1 6
>=OO7 9
price1OO: @
)OO@ A
;OOA B
}PP 
ifQQ 
(QQ 
price2QQ 
!=QQ 
$numQQ 
)QQ 
{RR 
productsSS 
=SS 
productsSS #
.SS# $
WhereSS$ )
(SS) *
sSS* +
=>SS, .
sSS/ 0
.SS0 1
PriceSS1 6
<=SS7 9
price2SS: @
)SS@ A
;SSA B
}TT 
returnUU 
productsUU 
;UU 
}VV 	
[ZZ 	

ActionNameZZ	 
(ZZ 
$strZZ  
)ZZ  !
]ZZ! "
public[[ 
async[[ 
Task[[ 
<[[ 
IActionResult[[ '
>[[' (

IndexSales[[) 3
([[3 4
string[[4 :
searchString[[; G
,[[G H
decimal[[I P
price1[[Q W
,[[W X
decimal[[Y `
price2[[a g
,[[g h
string[[i o
category[[p x
)[[x y
{\\ 	
var]] 
stocks]] 
=]] 
from]] 
m]] 
in]]  "
_context]]# +
.]]+ ,

StockEntry]], 6
select]]7 =
m]]> ?
;]]? @
var^^ 
products^^ 
=^^ 
from^^ 
m^^  !
in^^" $
_context^^% -
.^^- .
Product^^. 5
.^^5 6
Include^^6 =
(^^= >
o^^> ?
=>^^@ B
o^^C D
.^^D E
ProductCategory^^E T
)^^T U
.^^U V
ThenInclude^^V a
(^^a b
z^^b c
=>^^d f
z^^g h
.^^h i
Category^^i q
)^^q r
.^^r s
Where^^s x
(^^x y
s^^y z
=>^^{ }
s^^~ 
.	^^ Ä
Sales
^^Ä Ö
>
^^Ü á
$num
^^à â
)
^^â ä
.
^^ä ã
OrderBy
^^ã í
(
^^í ì
x
^^ì î
=>
^^ï ó
x
^^ò ô
.
^^ô ö
ProductName
^^ö •
)
^^• ¶
select__ !
m__" #
;__# $
foreach`` 
(`` 
var`` 
stock`` 
in`` !
stocks``" (
)``( )
{aa 
foreachbb 
(bb 
varbb 
prodbb !
inbb" $
productsbb% -
)bb- .
{cc 
ifdd 
(dd 
(dd 
stockdd 
.dd 
	ProductIddd (
==dd) +
proddd, 0
.dd0 1
	ProductIddd1 :
)dd: ;
&&dd< >
(dd? @
stockdd@ E
.ddE F
RemainingStockddF T
<=ddU W
$numddX Y
)ddY Z
)ddZ [
{ee 
productsff  
=ff! "
productsff# +
.ff+ ,
Whereff, 1
(ff1 2
qff2 3
=>ff4 6
!ff7 8
qff8 9
.ff9 :
Equalsff: @
(ff@ A
prodffA E
)ffE F
)ffF G
;ffG H
}gg 
}hh 
}ii 
dynamicjj 
mymodeljj 
=jj 
newjj !
ExpandoObjectjj" /
(jj/ 0
)jj0 1
;jj1 2
mymodelkk 
.kk 

Categoryeskk 
=kk  
fromkk! %
mkk& '
inkk( *
_contextkk+ 3
.kk3 4
Categorykk4 <
selectkk= C
mkkD E
;kkE F
productsmm 
=mm !
filterProductsByPricemm ,
(mm, -
productsmm- 5
,mm5 6
searchStringmm7 C
,mmC D
price1mmE K
,mmK L
price2mmM S
)mmS T
;mmT U
ifoo 
(oo 
!oo 
Stringoo 
.oo 
IsNullOrEmptyoo %
(oo% &
categoryoo& .
)oo. /
)oo/ 0
{pp 
Listqq 
<qq 
Productqq 
>qq 
prodqq "
=qq# $
newqq% (
Listqq) -
<qq- .
Productqq. 5
>qq5 6
(qq6 7
)qq7 8
;qq8 9
varrr 
categoryIdsrr 
=rr  !
fromrr" &
mrr' (
inrr) +
_contextrr, 4
.rr4 5
ProductCategoryrr5 D
.rrD E
WhererrE J
(rrJ K
srrK L
=>rrM O
srrP Q
.rrQ R
CategoryrrR Z
.rrZ [
CategoryNamerr[ g
.rrg h
Equalsrrh n
(rrn o
categoryrro w
)rrw x
)rrx y
select	rrz Ä
m
rrÅ Ç
;
rrÇ É
foreachss 
(ss 
varss 

categoryIdss '
inss( *
categoryIdsss+ 6
)ss6 7
{tt 
varuu 
filteredProductsuu (
=uu) *
productsuu+ 3
.uu3 4
Whereuu4 9
(uu9 :
suu: ;
=>uu< >
suu? @
.uu@ A
ProductCategoryuuA P
.uuP Q
ContainsuuQ Y
(uuY Z

categoryIduuZ d
)uud e
)uue f
;uuf g
prodvv 
=vv !
filterProductsByStockvv 0
(vv0 1
filteredProductsvv1 A
,vvA B
stocksvvC I
)vvI J
;vvJ K
}xx 
mymodelyy 
.yy 
Productsyy  
=yy! "
prodyy# '
;yy' (
returnzz 
Viewzz 
(zz 
mymodelzz #
)zz# $
;zz$ %
}{{ 
mymodel}} 
.}} 
Products}} 
=}} 
await}} $
products}}% -
.}}- .
ToListAsync}}. 9
(}}9 :
)}}: ;
;}}; <
return~~ 
View~~ 
(~~ 
mymodel~~ 
)~~  
;~~  !
} 	
private
ÅÅ 
List
ÅÅ 
<
ÅÅ 
Product
ÅÅ 
>
ÅÅ #
filterProductsByStock
ÅÅ 3
(
ÅÅ3 4

IQueryable
ÅÅ4 >
<
ÅÅ> ?
Product
ÅÅ? F
>
ÅÅF G
filteredProducts
ÅÅH X
,
ÅÅX Y

IQueryable
ÅÅZ d
<
ÅÅd e

StockEntry
ÅÅe o
>
ÅÅo p
stocks
ÅÅq w
)
ÅÅw x
{
ÇÇ 	
List
ÉÉ 
<
ÉÉ 
Product
ÉÉ 
>
ÉÉ 
prod
ÉÉ 
=
ÉÉ  
new
ÉÉ! $
List
ÉÉ% )
<
ÉÉ) *
Product
ÉÉ* 1
>
ÉÉ1 2
(
ÉÉ2 3
)
ÉÉ3 4
;
ÉÉ4 5
foreach
ÑÑ 
(
ÑÑ 
var
ÑÑ 
p
ÑÑ 
in
ÑÑ 
filteredProducts
ÑÑ .
)
ÑÑ. /
{
ÖÖ 
foreach
ÜÜ 
(
ÜÜ 
var
ÜÜ 
stock
ÜÜ "
in
ÜÜ# %
stocks
ÜÜ& ,
)
ÜÜ, -
{
áá 
if
àà 
(
àà 
stock
àà 
.
àà 
	ProductId
àà '
==
àà( *
p
àà+ ,
.
àà, -
	ProductId
àà- 6
&&
àà7 9
stock
àà: ?
.
àà? @
RemainingStock
àà@ N
>
ààO P
$num
ààQ R
)
ààR S
{
ââ 
prod
ää 
.
ää 
Add
ää  
(
ää  !
p
ää! "
)
ää" #
;
ää# $
}
ãã 
}
åå 
}
çç 
return
éé 
prod
éé 
;
éé 
}
èè 	
public
íí 
async
íí 
Task
íí 
<
íí 
IActionResult
íí '
>
íí' (
Details
íí) 0
(
íí0 1
string
íí1 7
id
íí8 :
)
íí: ;
{
ìì 	
if
îî 
(
îî 
id
îî 
==
îî 
null
îî 
)
îî 
{
ïï 
return
ññ 
NotFound
ññ 
(
ññ  
)
ññ  !
;
ññ! "
}
óó 
var
ôô 
product
ôô 
=
ôô 
await
ôô 
_context
ôô  (
.
ôô( )
Product
ôô) 0
.
öö !
FirstOrDefaultAsync
öö $
(
öö$ %
m
öö% &
=>
öö' )
m
öö* +
.
öö+ ,
	ProductId
öö, 5
==
öö6 8
id
öö9 ;
)
öö; <
;
öö< =
if
õõ 
(
õõ 
product
õõ 
==
õõ 
null
õõ 
)
õõ  
{
úú 
return
ùù 
NotFound
ùù 
(
ùù  
)
ùù  !
;
ùù! "
}
ûû 
return
†† 
View
†† 
(
†† 
product
†† 
)
††  
;
††  !
}
°° 	
public
§§ 
IActionResult
§§ 
Create
§§ #
(
§§# $
)
§§$ %
{
•• 	
return
¶¶ 
View
¶¶ 
(
¶¶ 
)
¶¶ 
;
¶¶ 
}
ßß 	
[
¨¨ 	
HttpPost
¨¨	 
]
¨¨ 
[
≠≠ 	&
ValidateAntiForgeryToken
≠≠	 !
]
≠≠! "
public
ÆÆ 
async
ÆÆ 
Task
ÆÆ 
<
ÆÆ 
IActionResult
ÆÆ '
>
ÆÆ' (
Create
ÆÆ) /
(
ÆÆ/ 0
[
ÆÆ0 1
Bind
ÆÆ1 5
(
ÆÆ5 6
$str
ÆÆ6 }
)
ÆÆ} ~
]
ÆÆ~ 
ProductÆÆÄ á
productÆÆà è
)ÆÆè ê
{
ØØ 	
if
∞∞ 
(
∞∞ 

ModelState
∞∞ 
.
∞∞ 
IsValid
∞∞ "
)
∞∞" #
{
±± 
product
≤≤ 
.
≤≤ 
	ProductId
≤≤ !
=
≤≤" #
Guid
≤≤$ (
.
≤≤( )
NewGuid
≤≤) 0
(
≤≤0 1
)
≤≤1 2
.
≤≤2 3
ToString
≤≤3 ;
(
≤≤; <
)
≤≤< =
;
≤≤= >
_context
≥≥ 
.
≥≥ 
Add
≥≥ 
(
≥≥ 
product
≥≥ $
)
≥≥$ %
;
≥≥% &
await
¥¥ 
_context
¥¥ 
.
¥¥ 
SaveChangesAsync
¥¥ /
(
¥¥/ 0
)
¥¥0 1
;
¥¥1 2

StockEntry
µµ 
stock
µµ  
=
µµ! "
new
µµ# &

StockEntry
µµ' 1
(
µµ1 2
)
µµ2 3
;
µµ3 4
stock
∂∂ 
.
∂∂ 
RemainingStock
∂∂ $
=
∂∂% &
$num
∂∂' (
;
∂∂( )
stock
∑∑ 
.
∑∑ 
	ProductId
∑∑ 
=
∑∑  !
product
∑∑" )
.
∑∑) *
	ProductId
∑∑* 3
;
∑∑3 4
stock
∏∏ 
.
∏∏ 
StockId
∏∏ 
=
∏∏ 
Guid
∏∏  $
.
∏∏$ %
NewGuid
∏∏% ,
(
∏∏, -
)
∏∏- .
.
∏∏. /
ToString
∏∏/ 7
(
∏∏7 8
)
∏∏8 9
;
∏∏9 :
_context
ππ 
.
ππ 
Add
ππ 
(
ππ 
stock
ππ "
)
ππ" #
;
ππ# $
await
∫∫ 
_context
∫∫ 
.
∫∫ 
SaveChangesAsync
∫∫ /
(
∫∫/ 0
)
∫∫0 1
;
∫∫1 2
return
ªª 
RedirectToAction
ªª '
(
ªª' (
nameof
ªª( .
(
ªª. /
Index
ªª/ 4
)
ªª4 5
)
ªª5 6
;
ªª6 7
}
ºº 
return
ΩΩ 
View
ΩΩ 
(
ΩΩ 
product
ΩΩ 
)
ΩΩ  
;
ΩΩ  !
}
ææ 	
public
¡¡ 
async
¡¡ 
Task
¡¡ 
<
¡¡ 
IActionResult
¡¡ '
>
¡¡' (
Edit
¡¡) -
(
¡¡- .
string
¡¡. 4
id
¡¡5 7
)
¡¡7 8
{
¬¬ 	
if
√√ 
(
√√ 
id
√√ 
==
√√ 
null
√√ 
)
√√ 
{
ƒƒ 
return
≈≈ 
NotFound
≈≈ 
(
≈≈  
)
≈≈  !
;
≈≈! "
}
∆∆ 
var
»» 
product
»» 
=
»» 
await
»» 
_context
»»  (
.
»»( )
Product
»») 0
.
»»0 1
	FindAsync
»»1 :
(
»»: ;
id
»»; =
)
»»= >
;
»»> ?
if
…… 
(
…… 
product
…… 
==
…… 
null
…… 
)
……  
{
   
return
ÀÀ 
NotFound
ÀÀ 
(
ÀÀ  
)
ÀÀ  !
;
ÀÀ! "
}
ÃÃ 
return
ÕÕ 
View
ÕÕ 
(
ÕÕ 
product
ÕÕ 
)
ÕÕ  
;
ÕÕ  !
}
ŒŒ 	
[
”” 	
HttpPost
””	 
]
”” 
[
‘‘ 	&
ValidateAntiForgeryToken
‘‘	 !
]
‘‘! "
public
’’ 
async
’’ 
Task
’’ 
<
’’ 
IActionResult
’’ '
>
’’' (
Edit
’’) -
(
’’- .
string
’’. 4
id
’’5 7
,
’’7 8
[
’’9 :
Bind
’’: >
(
’’> ?
$str’’? ñ
)’’ñ ó
]’’ó ò
Product’’ô †
product’’° ®
)’’® ©
{
÷÷ 	
if
◊◊ 
(
◊◊ 
id
◊◊ 
!=
◊◊ 
product
◊◊ 
.
◊◊ 
	ProductId
◊◊ '
)
◊◊' (
{
ÿÿ 
return
ŸŸ 
NotFound
ŸŸ 
(
ŸŸ  
)
ŸŸ  !
;
ŸŸ! "
}
⁄⁄ 
product
€€ 
.
€€ 
Nprice
€€ 
=
€€ 
(
€€ 
product
€€ %
.
€€% &
Price
€€& +
-
€€, -
(
€€. /
$num
€€/ 1
*
€€2 3
product
€€4 ;
.
€€; <
Price
€€< A
/
€€B C
$num
€€D G
)
€€H I
)
€€I J
;
€€J K
if
‹‹ 
(
‹‹ 

ModelState
‹‹ 
.
‹‹ 
IsValid
‹‹ "
)
‹‹" #
{
›› 
try
ﬁﬁ 
{
ﬂﬂ 
_context
‡‡ 
.
‡‡ 
Update
‡‡ #
(
‡‡# $
product
‡‡$ +
)
‡‡+ ,
;
‡‡, -
await
·· 
_context
·· "
.
··" #
SaveChangesAsync
··# 3
(
··3 4
)
··4 5
;
··5 6
}
‚‚ 
catch
„„ 
(
„„ *
DbUpdateConcurrencyException
„„ 3
)
„„3 4
{
‰‰ 
if
ÂÂ 
(
ÂÂ 
!
ÂÂ 
ProductExists
ÂÂ &
(
ÂÂ& '
product
ÂÂ' .
.
ÂÂ. /
	ProductId
ÂÂ/ 8
)
ÂÂ8 9
)
ÂÂ9 :
{
ÊÊ 
return
ÁÁ 
NotFound
ÁÁ '
(
ÁÁ' (
)
ÁÁ( )
;
ÁÁ) *
}
ËË 
else
ÈÈ 
{
ÍÍ 
throw
ÎÎ 
;
ÎÎ 
}
ÏÏ 
}
ÌÌ 
return
ÓÓ 
RedirectToAction
ÓÓ '
(
ÓÓ' (
nameof
ÓÓ( .
(
ÓÓ. /
Index
ÓÓ/ 4
)
ÓÓ4 5
)
ÓÓ5 6
;
ÓÓ6 7
}
ÔÔ 
return
 
View
 
(
 
product
 
)
  
;
  !
}
ÒÒ 	
public
ÙÙ 
async
ÙÙ 
Task
ÙÙ 
<
ÙÙ 
IActionResult
ÙÙ '
>
ÙÙ' (
Delete
ÙÙ) /
(
ÙÙ/ 0
string
ÙÙ0 6
id
ÙÙ7 9
)
ÙÙ9 :
{
ıı 	
if
ˆˆ 
(
ˆˆ 
null
ˆˆ 
==
ˆˆ 
id
ˆˆ 
)
ˆˆ 
{
˜˜ 
return
¯¯ 
NotFound
¯¯ 
(
¯¯  
)
¯¯  !
;
¯¯! "
}
˘˘ 
var
˚˚ 
product
˚˚ 
=
˚˚ 
await
˚˚ 
_context
˚˚  (
.
˚˚( )
Product
˚˚) 0
.
¸¸ !
FirstOrDefaultAsync
¸¸ $
(
¸¸$ %
m
¸¸% &
=>
¸¸' )
m
¸¸* +
.
¸¸+ ,
	ProductId
¸¸, 5
==
¸¸6 8
id
¸¸9 ;
)
¸¸; <
;
¸¸< =
if
˝˝ 
(
˝˝ 
null
˝˝ 
==
˝˝ 
product
˝˝ 
)
˝˝  
{
˛˛ 
return
ˇˇ 
NotFound
ˇˇ 
(
ˇˇ  
)
ˇˇ  !
;
ˇˇ! "
}
ÄÄ 
return
ÇÇ 
View
ÇÇ 
(
ÇÇ 
product
ÇÇ 
)
ÇÇ  
;
ÇÇ  !
}
ÉÉ 	
[
ÜÜ 	
HttpPost
ÜÜ	 
,
ÜÜ 

ActionName
ÜÜ 
(
ÜÜ 
$str
ÜÜ &
)
ÜÜ& '
]
ÜÜ' (
[
áá 	&
ValidateAntiForgeryToken
áá	 !
]
áá! "
public
àà 
async
àà 
Task
àà 
<
àà 
IActionResult
àà '
>
àà' (
DeleteConfirmed
àà) 8
(
àà8 9
string
àà9 ?
id
àà@ B
)
ààB C
{
ââ 	
var
ää 
product
ää 
=
ää 
await
ää 
_context
ää  (
.
ää( )
Product
ää) 0
.
ää0 1
	FindAsync
ää1 :
(
ää: ;
id
ää; =
)
ää= >
;
ää> ?
_context
ãã 
.
ãã 
Product
ãã 
.
ãã 
Remove
ãã #
(
ãã# $
product
ãã$ +
)
ãã+ ,
;
ãã, -
await
åå 
_context
åå 
.
åå 
SaveChangesAsync
åå +
(
åå+ ,
)
åå, -
;
åå- .
return
çç 
RedirectToAction
çç #
(
çç# $
nameof
çç$ *
(
çç* +
Index
çç+ 0
)
çç0 1
)
çç1 2
;
çç2 3
}
éé 	
private
êê 
bool
êê 
ProductExists
êê "
(
êê" #
string
êê# )
id
êê* ,
)
êê, -
{
ëë 	
return
íí 
_context
íí 
.
íí 
Product
íí #
.
íí# $
Any
íí$ '
(
íí' (
e
íí( )
=>
íí* ,
e
íí- .
.
íí. /
	ProductId
íí/ 8
==
íí9 ;
id
íí< >
)
íí> ?
;
íí? @
}
ìì 	
[
ññ 	
	Authorize
ññ	 
]
ññ 
[
óó 	
HttpGet
óó	 
,
óó 

ActionName
óó 
(
óó 
$str
óó (
)
óó( )
]
óó) *
public
òò 
async
òò 
Task
òò 
<
òò 
IActionResult
òò '
>
òò' (
	AddToCart
òò) 2
(
òò2 3
string
òò3 9
id
òò: <
)
òò< =
{
ôô 	
var
öö 
order
öö 
=
öö 
new
öö 
Order
öö !
(
öö! "
)
öö" #
;
öö# $
order
õõ 
.
õõ 
OrderId
õõ 
=
õõ 
Guid
õõ  
.
õõ  !
NewGuid
õõ! (
(
õõ( )
)
õõ) *
.
õõ* +
ToString
õõ+ 3
(
õõ3 4
)
õõ4 5
;
õõ5 6
order
úú 
.
úú 
HasBeenPlaced
úú 
=
úú  !
$num
úú" #
;
úú# $
order
ùù 
.
ùù 
HasBeenConfirmed
ùù "
=
ùù# $
$str
ùù% (
;
ùù( )
order
ûû 
.
ûû 
ClientId
ûû 
=
ûû "
_httpContextAccessor
ûû 1
.
ûû1 2
HttpContext
ûû2 =
.
ûû= >
User
ûû> B
.
ûûB C
	FindFirst
ûûC L
(
ûûL M

ClaimTypes
ûûM W
.
ûûW X
NameIdentifier
ûûX f
)
ûûf g
.
ûûg h
Value
ûûh m
;
ûûm n
_context
üü 
.
üü 
Order
üü 
.
üü 
Add
üü 
(
üü 
order
üü $
)
üü$ %
;
üü% &
var
†† 
stocks
†† 
=
†† 
_context
†† !
.
††! "

StockEntry
††" ,
.
††, -
Include
††- 4
(
††4 5
s
††5 6
=>
††7 9
s
††: ;
.
††; <
Product
††< C
)
††C D
.
††D E
OrderBy
††E L
(
††L M
x
††M N
=>
††O Q
x
††R S
.
††S T
RemainingStock
††T b
)
††b c
;
††c d
foreach
°° 
(
°° 
var
°° 
stock
°° 
in
°° !
stocks
°°" (
)
°°( )
{
¢¢ 
if
££ 
(
££ 
stock
££ 
.
££ 
	ProductId
££ #
==
££$ &
id
££' )
)
££) *
{
§§ 
stock
•• 
.
•• 
RemainingStock
•• (
--
••( *
;
••* +
_context
¶¶ 
.
¶¶ 
Update
¶¶ #
(
¶¶# $
stock
¶¶$ )
)
¶¶) *
;
¶¶* +
break
ßß 
;
ßß 
}
®® 
}
©© 
await
™™ 
_context
™™ 
.
™™ 
SaveChangesAsync
™™ +
(
™™+ ,
)
™™, -
;
™™- .
var
´´ 
productorder
´´ 
=
´´ 
new
´´ "
ProductOrder
´´# /
(
´´/ 0
)
´´0 1
;
´´1 2
productorder
¨¨ 
.
¨¨ 
IdProductOrder
¨¨ '
=
¨¨( )
Guid
¨¨* .
.
¨¨. /
NewGuid
¨¨/ 6
(
¨¨6 7
)
¨¨7 8
.
¨¨8 9
ToString
¨¨9 A
(
¨¨A B
)
¨¨B C
;
¨¨C D
productorder
≠≠ 
.
≠≠ 
	OrderIdFk
≠≠ "
=
≠≠# $
order
≠≠% *
.
≠≠* +
OrderId
≠≠+ 2
;
≠≠2 3
productorder
ÆÆ 
.
ÆÆ 
ProductIdFk
ÆÆ $
=
ÆÆ% &
id
ÆÆ' )
;
ÆÆ) *
_context
ØØ 
.
ØØ 
ProductOrder
ØØ !
.
ØØ! "
Add
ØØ" %
(
ØØ% &
productorder
ØØ& 2
)
ØØ2 3
;
ØØ3 4
await
∞∞ 
_context
∞∞ 
.
∞∞ 
SaveChangesAsync
∞∞ +
(
∞∞+ ,
)
∞∞, -
;
∞∞- .
return
±± 
RedirectToAction
±± #
(
±±# $
nameof
±±$ *
(
±±* +
Index
±±+ 0
)
±±0 1
)
±±1 2
;
±±2 3
}
≤≤ 	
}
¥¥ 
}µµ ÁH
ÖE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Controllers\RolesController.cs
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
.$ %
Controllers% 0
{ 
public		 

class		 
RolesController		  
:		! "

Controller		# -
{

 
private 
readonly 
EcommerceContext )
_context* 2
;2 3
public 
RolesController 
( 
EcommerceContext /
context0 7
)7 8
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
IActionResult '
>' (
Index) .
(. /
)/ 0
{ 	
return 
View 
( 
await 
_context &
.& '
Role' +
.+ ,
ToListAsync, 7
(7 8
)8 9
)9 :
;: ;
} 	
public 
async 
Task 
< 
IActionResult '
>' (
Details) 0
(0 1
int1 4
?4 5
id6 8
)8 9
{ 	
if 
( 
null 
== 
id 
) 
{ 
return 
NotFound 
(  
)  !
;! "
} 
var   
role   
=   
await   
_context   %
.  % &
Role  & *
.!! 
FirstOrDefaultAsync!! $
(!!$ %
m!!% &
=>!!' )
m!!* +
.!!+ ,
RoleId!!, 2
==!!3 5
id!!6 8
)!!8 9
;!!9 :
if"" 
("" 
role"" 
=="" 
null"" 
)"" 
{## 
return$$ 
NotFound$$ 
($$  
)$$  !
;$$! "
}%% 
return'' 
View'' 
('' 
role'' 
)'' 
;'' 
}(( 	
public++ 
IActionResult++ 
Create++ #
(++# $
)++$ %
{,, 	
return-- 
View-- 
(-- 
)-- 
;-- 
}.. 	
[33 	
HttpPost33	 
]33 
[44 	$
ValidateAntiForgeryToken44	 !
]44! "
public55 
async55 
Task55 
<55 
IActionResult55 '
>55' (
Create55) /
(55/ 0
[550 1
Bind551 5
(555 6
$str556 D
)55D E
]55E F
Role55G K
role55L P
)55P Q
{66 	
if77 
(77 

ModelState77 
.77 
IsValid77 "
)77" #
{88 
_context99 
.99 
Add99 
(99 
role99 !
)99! "
;99" #
await:: 
_context:: 
.:: 
SaveChangesAsync:: /
(::/ 0
)::0 1
;::1 2
return;; 
RedirectToAction;; '
(;;' (
nameof;;( .
(;;. /
Index;;/ 4
);;4 5
);;5 6
;;;6 7
}<< 
return== 
View== 
(== 
role== 
)== 
;== 
}>> 	
publicAA 
asyncAA 
TaskAA 
<AA 
IActionResultAA '
>AA' (
EditAA) -
(AA- .
intAA. 1
?AA1 2
idAA3 5
)AA5 6
{BB 	
ifCC 
(CC 
idCC 
==CC 
nullCC 
)CC 
{DD 
returnEE 
NotFoundEE 
(EE  
)EE  !
;EE! "
}FF 
varHH 
roleHH 
=HH 
awaitHH 
_contextHH %
.HH% &
RoleHH& *
.HH* +
	FindAsyncHH+ 4
(HH4 5
idHH5 7
)HH7 8
;HH8 9
ifII 
(II 
roleII 
==II 
nullII 
)II 
{JJ 
returnKK 
NotFoundKK 
(KK  
)KK  !
;KK! "
}LL 
returnMM 
ViewMM 
(MM 
roleMM 
)MM 
;MM 
}NN 	
[SS 	
HttpPostSS	 
]SS 
[TT 	$
ValidateAntiForgeryTokenTT	 !
]TT! "
publicUU 
asyncUU 
TaskUU 
<UU 
IActionResultUU '
>UU' (
EditUU) -
(UU- .
intUU. 1
idUU2 4
,UU4 5
[UU6 7
BindUU7 ;
(UU; <
$strUU< J
)UUJ K
]UUK L
RoleUUM Q
roleUUR V
)UUV W
{VV 	
ifWW 
(WW 
idWW 
!=WW 
roleWW 
.WW 
RoleIdWW !
)WW! "
{XX 
returnYY 
NotFoundYY 
(YY  
)YY  !
;YY! "
}ZZ 
if\\ 
(\\ 

ModelState\\ 
.\\ 
IsValid\\ "
)\\" #
{]] 
try^^ 
{__ 
_context`` 
.`` 
Update`` #
(``# $
role``$ (
)``( )
;``) *
awaitaa 
_contextaa "
.aa" #
SaveChangesAsyncaa# 3
(aa3 4
)aa4 5
;aa5 6
}bb 
catchcc 
(cc (
DbUpdateConcurrencyExceptioncc 3
)cc3 4
{dd 
ifee 
(ee 
!ee 

RoleExistsee #
(ee# $
roleee$ (
.ee( )
RoleIdee) /
)ee/ 0
)ee0 1
{ff 
returngg 
NotFoundgg '
(gg' (
)gg( )
;gg) *
}hh 
elseii 
{jj 
throwkk 
;kk 
}ll 
}mm 
returnnn 
RedirectToActionnn '
(nn' (
nameofnn( .
(nn. /
Indexnn/ 4
)nn4 5
)nn5 6
;nn6 7
}oo 
returnpp 
Viewpp 
(pp 
rolepp 
)pp 
;pp 
}qq 	
publictt 
asynctt 
Tasktt 
<tt 
IActionResulttt '
>tt' (
Deletett) /
(tt/ 0
inttt0 3
?tt3 4
idtt5 7
)tt7 8
{uu 	
ifvv 
(vv 
idvv 
==vv 
nullvv 
)vv 
{ww 
returnxx 
NotFoundxx 
(xx  
)xx  !
;xx! "
}yy 
var{{ 
role{{ 
={{ 
await{{ 
_context{{ %
.{{% &
Role{{& *
.|| 
FirstOrDefaultAsync|| $
(||$ %
m||% &
=>||' )
m||* +
.||+ ,
RoleId||, 2
==||3 5
id||6 8
)||8 9
;||9 :
if}} 
(}} 
role}} 
==}} 
null}} 
)}} 
{~~ 
return 
NotFound 
(  
)  !
;! "
}
ÄÄ 
return
ÇÇ 
View
ÇÇ 
(
ÇÇ 
role
ÇÇ 
)
ÇÇ 
;
ÇÇ 
}
ÉÉ 	
[
ÜÜ 	
HttpPost
ÜÜ	 
,
ÜÜ 

ActionName
ÜÜ 
(
ÜÜ 
$str
ÜÜ &
)
ÜÜ& '
]
ÜÜ' (
[
áá 	&
ValidateAntiForgeryToken
áá	 !
]
áá! "
public
àà 
async
àà 
Task
àà 
<
àà 
IActionResult
àà '
>
àà' (
DeleteConfirmed
àà) 8
(
àà8 9
int
àà9 <
id
àà= ?
)
àà? @
{
ââ 	
var
ää 
role
ää 
=
ää 
await
ää 
_context
ää %
.
ää% &
Role
ää& *
.
ää* +
	FindAsync
ää+ 4
(
ää4 5
id
ää5 7
)
ää7 8
;
ää8 9
_context
ãã 
.
ãã 
Role
ãã 
.
ãã 
Remove
ãã  
(
ãã  !
role
ãã! %
)
ãã% &
;
ãã& '
await
åå 
_context
åå 
.
åå 
SaveChangesAsync
åå +
(
åå+ ,
)
åå, -
;
åå- .
return
çç 
RedirectToAction
çç #
(
çç# $
nameof
çç$ *
(
çç* +
Index
çç+ 0
)
çç0 1
)
çç1 2
;
çç2 3
}
éé 	
private
êê 
bool
êê 

RoleExists
êê 
(
êê  
int
êê  #
id
êê$ &
)
êê& '
{
ëë 	
return
íí 
_context
íí 
.
íí 
Role
íí  
.
íí  !
Any
íí! $
(
íí$ %
e
íí% &
=>
íí' )
e
íí* +
.
íí+ ,
RoleId
íí, 2
==
íí3 5
id
íí6 8
)
íí8 9
;
íí9 :
}
ìì 	
}
îî 
}ïï √^
åE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Controllers\StockEntriesController.cs
	namespace

 	&
Ecommerce_proiect_an4_sem1


 $
.

$ %
Controllers

% 0
{ 
[ 
	Authorize 
( 
Roles 
= 
$str 
) 
]  
public 

class "
StockEntriesController '
:( )

Controller* 4
{ 
private 
readonly 
EcommerceContext )
_context* 2
;2 3
public "
StockEntriesController %
(% &
EcommerceContext& 6
context7 >
)> ?
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
IActionResult '
>' (
Index) .
(. /
)/ 0
{ 	
var 
ecommerceContext  
=! "
_context# +
.+ ,

StockEntry, 6
.6 7
Include7 >
(> ?
s? @
=>A C
sD E
.E F
ProductF M
)M N
.N O
OrderByO V
(V W
xW X
=>Y [
x\ ]
.] ^
RemainingStock^ l
)l m
;m n
return 
View 
( 
await 
ecommerceContext .
.. /
ToListAsync/ :
(: ;
); <
)< =
;= >
} 	
public 
async 
Task 
< 
IActionResult '
>' (
Details) 0
(0 1
string1 7
id8 :
): ;
{ 	
if   
(   
null   
==   
id   
)   
{!! 
return"" 
NotFound"" 
(""  
)""  !
;""! "
}## 
var%% 

stockEntry%% 
=%% 
await%% "
_context%%# +
.%%+ ,

StockEntry%%, 6
.&& 
Include&& 
(&& 
s&& 
=>&& 
s&& 
.&&  
Product&&  '
)&&' (
.'' 
FirstOrDefaultAsync'' $
(''$ %
m''% &
=>''' )
m''* +
.''+ ,
StockId'', 3
==''4 6
id''7 9
)''9 :
;'': ;
if(( 
((( 

stockEntry(( 
==(( 
null(( "
)((" #
{)) 
return** 
NotFound** 
(**  
)**  !
;**! "
}++ 
return-- 
View-- 
(-- 

stockEntry-- "
)--" #
;--# $
}.. 	
public11 
IActionResult11 
Create11 #
(11# $
)11$ %
{22 	
ViewData33 
[33 
$str33  
]33  !
=33" #
new33$ '

SelectList33( 2
(332 3
_context333 ;
.33; <
Product33< C
,33C D
$str33E P
,33P Q
$str33R _
)33_ `
;33` a
return44 
View44 
(44 
)44 
;44 
}55 	
[:: 	
HttpPost::	 
]:: 
[;; 	$
ValidateAntiForgeryToken;;	 !
];;! "
public<< 
async<< 
Task<< 
<<< 
IActionResult<< '
><<' (
Create<<) /
(<</ 0
[<<0 1
Bind<<1 5
(<<5 6
$str<<6 P
)<<P Q
]<<Q R

StockEntry<<S ]

stockEntry<<^ h
)<<h i
{== 	
if>> 
(>> 

ModelState>> 
.>> 
IsValid>> "
)>>" #
{?? 

stockEntry@@ 
.@@ 
StockId@@ "
=@@# $
Guid@@% )
.@@) *
NewGuid@@* 1
(@@1 2
)@@2 3
.@@3 4
ToString@@4 <
(@@< =
)@@= >
;@@> ?
_contextAA 
.AA 
AddAA 
(AA 

stockEntryAA '
)AA' (
;AA( )
awaitBB 
_contextBB 
.BB 
SaveChangesAsyncBB /
(BB/ 0
)BB0 1
;BB1 2
returnCC 
RedirectToActionCC '
(CC' (
nameofCC( .
(CC. /
IndexCC/ 4
)CC4 5
)CC5 6
;CC6 7
}DD 
ViewDataEE 
[EE 
$strEE  
]EE  !
=EE" #
newEE$ '

SelectListEE( 2
(EE2 3
_contextEE3 ;
.EE; <
ProductEE< C
,EEC D
$strEEE P
,EEP Q
$strEER _
,EE_ `

stockEntryEEa k
.EEk l
	ProductIdEEl u
)EEu v
;EEv w
returnFF 
ViewFF 
(FF 

stockEntryFF "
)FF" #
;FF# $
}GG 	
publicJJ 
asyncJJ 
TaskJJ 
<JJ 
IActionResultJJ '
>JJ' (
EditJJ) -
(JJ- .
stringJJ. 4
idJJ5 7
)JJ7 8
{KK 	
ifLL 
(LL 
idLL 
==LL 
nullLL 
)LL 
{MM 
returnNN 
NotFoundNN 
(NN  
)NN  !
;NN! "
}OO 
varQQ 

stockEntryQQ 
=QQ 
awaitQQ "
_contextQQ# +
.QQ+ ,

StockEntryQQ, 6
.QQ6 7
	FindAsyncQQ7 @
(QQ@ A
idQQA C
)QQC D
;QQD E
ifRR 
(RR 

stockEntryRR 
==RR 
nullRR "
)RR" #
{SS 
returnTT 
NotFoundTT 
(TT  
)TT  !
;TT! "
}UU 
ViewDataVV 
[VV 
$strVV  
]VV  !
=VV" #
newVV$ '

SelectListVV( 2
(VV2 3
_contextVV3 ;
.VV; <
ProductVV< C
,VVC D
$strVVE P
,VVP Q
$strVVR _
,VV_ `

stockEntryVVa k
.VVk l
	ProductIdVVl u
)VVu v
;VVv w
returnWW 
ViewWW 
(WW 

stockEntryWW "
)WW" #
;WW# $
}XX 	
[]] 	
HttpPost]]	 
]]] 
[^^ 	$
ValidateAntiForgeryToken^^	 !
]^^! "
public__ 
async__ 
Task__ 
<__ 
IActionResult__ '
>__' (
Edit__) -
(__- .
string__. 4
id__5 7
,__7 8
[__9 :
Bind__: >
(__> ?
$str__? a
)__a b
]__b c

StockEntry__d n

stockEntry__o y
)__y z
{`` 	
ifaa 
(aa 
idaa 
!=aa 

stockEntryaa  
.aa  !
StockIdaa! (
)aa( )
{bb 
returncc 
NotFoundcc 
(cc  
)cc  !
;cc! "
}dd 
ifff 
(ff 

ModelStateff 
.ff 
IsValidff "
)ff" #
{gg 
tryhh 
{ii 
_contextjj 
.jj 
Updatejj #
(jj# $

stockEntryjj$ .
)jj. /
;jj/ 0
awaitkk 
_contextkk "
.kk" #
SaveChangesAsynckk# 3
(kk3 4
)kk4 5
;kk5 6
}ll 
catchmm 
(mm (
DbUpdateConcurrencyExceptionmm 3
)mm3 4
{nn 
ifoo 
(oo 
!oo 
StockEntryExistsoo )
(oo) *

stockEntryoo* 4
.oo4 5
StockIdoo5 <
)oo< =
)oo= >
{pp 
returnqq 
NotFoundqq '
(qq' (
)qq( )
;qq) *
}rr 
elsess 
{tt 
throwuu 
;uu 
}vv 
}ww 
returnxx 
RedirectToActionxx '
(xx' (
nameofxx( .
(xx. /
Indexxx/ 4
)xx4 5
)xx5 6
;xx6 7
}yy 
ViewDatazz 
[zz 
$strzz  
]zz  !
=zz" #
newzz$ '

SelectListzz( 2
(zz2 3
_contextzz3 ;
.zz; <
Productzz< C
,zzC D
$strzzE P
,zzP Q
$strzzR _
,zz_ `

stockEntryzza k
.zzk l
	ProductIdzzl u
)zzu v
;zzv w
return{{ 
View{{ 
({{ 

stockEntry{{ "
){{" #
;{{# $
}|| 	
public 
async 
Task 
< 
IActionResult '
>' (
Delete) /
(/ 0
string0 6
id7 9
)9 :
{
ÄÄ 	
if
ÅÅ 
(
ÅÅ 
id
ÅÅ 
==
ÅÅ 
null
ÅÅ 
)
ÅÅ 
{
ÇÇ 
return
ÉÉ 
NotFound
ÉÉ 
(
ÉÉ  
)
ÉÉ  !
;
ÉÉ! "
}
ÑÑ 
var
ÜÜ 

stockEntry
ÜÜ 
=
ÜÜ 
await
ÜÜ "
_context
ÜÜ# +
.
ÜÜ+ ,

StockEntry
ÜÜ, 6
.
áá 
Include
áá 
(
áá 
s
áá 
=>
áá 
s
áá 
.
áá  
Product
áá  '
)
áá' (
.
àà !
FirstOrDefaultAsync
àà $
(
àà$ %
m
àà% &
=>
àà' )
m
àà* +
.
àà+ ,
StockId
àà, 3
==
àà4 6
id
àà7 9
)
àà9 :
;
àà: ;
if
ââ 
(
ââ 

stockEntry
ââ 
==
ââ 
null
ââ "
)
ââ" #
{
ää 
return
ãã 
NotFound
ãã 
(
ãã  
)
ãã  !
;
ãã! "
}
åå 
return
éé 
View
éé 
(
éé 

stockEntry
éé "
)
éé" #
;
éé# $
}
èè 	
[
íí 	
HttpPost
íí	 
,
íí 

ActionName
íí 
(
íí 
$str
íí &
)
íí& '
]
íí' (
[
ìì 	&
ValidateAntiForgeryToken
ìì	 !
]
ìì! "
public
îî 
async
îî 
Task
îî 
<
îî 
IActionResult
îî '
>
îî' (
DeleteConfirmed
îî) 8
(
îî8 9
string
îî9 ?
id
îî@ B
)
îîB C
{
ïï 	
var
ññ 

stockEntry
ññ 
=
ññ 
await
ññ "
_context
ññ# +
.
ññ+ ,

StockEntry
ññ, 6
.
ññ6 7
	FindAsync
ññ7 @
(
ññ@ A
id
ññA C
)
ññC D
;
ññD E
_context
óó 
.
óó 

StockEntry
óó 
.
óó  
Remove
óó  &
(
óó& '

stockEntry
óó' 1
)
óó1 2
;
óó2 3
await
òò 
_context
òò 
.
òò 
SaveChangesAsync
òò +
(
òò+ ,
)
òò, -
;
òò- .
return
ôô 
RedirectToAction
ôô #
(
ôô# $
nameof
ôô$ *
(
ôô* +
Index
ôô+ 0
)
ôô0 1
)
ôô1 2
;
ôô2 3
}
öö 	
private
úú 
bool
úú 
StockEntryExists
úú %
(
úú% &
string
úú& ,
id
úú- /
)
úú/ 0
{
ùù 	
return
ûû 
_context
ûû 
.
ûû 

StockEntry
ûû &
.
ûû& '
Any
ûû' *
(
ûû* +
e
ûû+ ,
=>
ûû- /
e
ûû0 1
.
ûû1 2
StockId
ûû2 9
==
ûû: <
id
ûû= ?
)
ûû? @
;
ûû@ A
}
üü 	
}
°° 
}¢¢ πc
ÖE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Controllers\UsersController.cs
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
.$ %
Controllers% 0
{ 
public 

class 
UsersController  
:! "

Controller# -
{ 
private 
readonly 
EcommerceContext )
_context* 2
;2 3
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
public 
UsersController 
( 
EcommerceContext /
context0 7
,7 8 
IHttpContextAccessor9 M
httpContextAccessorN a
)a b
{ 	
_context 
= 
context 
;  
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7
} 	
public 
async 
Task 
< 
IActionResult '
>' (
Index) .
(. /
)/ 0
{ 	
var 
currentClient 
=  
_httpContextAccessor  4
.4 5
HttpContext5 @
.@ A
UserA E
.E F
	FindFirstF O
(O P

ClaimTypesP Z
.Z [
NameIdentifier[ i
)i j
.j k
Valuek p
;p q
var 
ecommerceContext  
=! "
_context# +
.+ ,
User, 0
.0 1
Where1 6
(6 7
y7 8
=>9 ;
y< =
.= >
Id> @
==A C
currentClientD Q
)Q R
.R S
IncludeS Z
(Z [
u[ \
=>] _
u` a
.a b
Roleb f
)f g
;g h
return 
View 
( 
await 
ecommerceContext .
.. /
ToListAsync/ :
(: ;
); <
)< =
;= >
} 	
public"" 
async"" 
Task"" 
<"" 
IActionResult"" '
>""' (
Details"") 0
(""0 1
string""1 7
id""8 :
)"": ;
{## 	
if$$ 
($$ 
id$$ 
==$$ 
null$$ 
)$$ 
{%% 
return&& 
NotFound&& 
(&&  
)&&  !
;&&! "
}'' 
var)) 
user)) 
=)) 
await)) 
_context)) %
.))% &
User))& *
.** 
Include** 
(** 
u** 
=>** 
u** 
.**  
Role**  $
)**$ %
.++ 
FirstOrDefaultAsync++ $
(++$ %
m++% &
=>++' )
m++* +
.+++ ,
Id++, .
==++/ 1
id++2 4
)++4 5
;++5 6
if,, 
(,, 
user,, 
==,, 
null,, 
),, 
{-- 
return.. 
NotFound.. 
(..  
)..  !
;..! "
}// 
return11 
View11 
(11 
user11 
)11 
;11 
}22 	
[44 	
	Authorize44	 
(44 
Roles44 
=44 
$str44 "
)44" #
]44# $
public55 
IActionResult55 
Create55 #
(55# $
)55$ %
{66 	
ViewData77 
[77 
$str77 
]77 
=77  
new77! $

SelectList77% /
(77/ 0
_context770 8
.778 9
Role779 =
,77= >
$str77? G
,77G H
$str77I P
)77P Q
;77Q R
return88 
View88 
(88 
)88 
;88 
}99 	
[>> 	
	Authorize>>	 
(>> 
Roles>> 
=>> 
$str>> "
)>>" #
]>># $
[?? 	
HttpPost??	 
]?? 
[@@ 	$
ValidateAntiForgeryToken@@	 !
]@@! "
publicAA 
asyncAA 
TaskAA 
<AA 
IActionResultAA '
>AA' (
CreateAA) /
(AA/ 0
[AA0 1
BindAA1 5
(AA5 6
$strAA6 Y
)AAY Z
]AAZ [
UserAA\ `
userAAa e
)AAe f
{BB 	
ifCC 
(CC 

ModelStateCC 
.CC 
IsValidCC "
)CC" #
{DD 
_contextEE 
.EE 
AddEE 
(EE 
userEE !
)EE! "
;EE" #
awaitFF 
_contextFF 
.FF 
SaveChangesAsyncFF /
(FF/ 0
)FF0 1
;FF1 2
returnGG 
RedirectToActionGG '
(GG' (
nameofGG( .
(GG. /
IndexGG/ 4
)GG4 5
)GG5 6
;GG6 7
}HH 
ViewDataII 
[II 
$strII 
]II 
=II  
newII! $

SelectListII% /
(II/ 0
_contextII0 8
.II8 9
RoleII9 =
,II= >
$strII? G
,IIG H
$strIII P
,IIP Q
userIIR V
.IIV W
RoleIdIIW ]
)II] ^
;II^ _
returnJJ 
ViewJJ 
(JJ 
userJJ 
)JJ 
;JJ 
}KK 	
publicNN 
asyncNN 
TaskNN 
<NN 
IActionResultNN '
>NN' (
EditNN) -
(NN- .
stringNN. 4
idNN5 7
)NN7 8
{OO 	
ifPP 
(PP 
idPP 
==PP 
nullPP 
)PP 
{QQ 
returnRR 
NotFoundRR 
(RR  
)RR  !
;RR! "
}SS 
varUU 
userUU 
=UU 
awaitUU 
_contextUU %
.UU% &
UserUU& *
.UU* +
	FindAsyncUU+ 4
(UU4 5
idUU5 7
)UU7 8
;UU8 9
ifVV 
(VV 
userVV 
==VV 
nullVV 
)VV 
{WW 
returnXX 
NotFoundXX 
(XX  
)XX  !
;XX! "
}YY 
ViewDataZZ 
[ZZ 
$strZZ 
]ZZ 
=ZZ  
newZZ! $

SelectListZZ% /
(ZZ/ 0
_contextZZ0 8
.ZZ8 9
RoleZZ9 =
,ZZ= >
$strZZ? G
,ZZG H
$strZZI P
,ZZP Q
userZZR V
.ZZV W
RoleIdZZW ]
)ZZ] ^
;ZZ^ _
return[[ 
View[[ 
([[ 
user[[ 
)[[ 
;[[ 
}\\ 	
[aa 	
HttpPostaa	 
]aa 
[bb 	$
ValidateAntiForgeryTokenbb	 !
]bb! "
publiccc 
asynccc 
Taskcc 
<cc 
IActionResultcc '
>cc' (
Editcc) -
(cc- .
stringcc. 4
idcc5 7
,cc7 8
[cc9 :
Bindcc: >
(cc> ?
$strcc? b
)ccb c
]ccc d
Usercce i
userccj n
)ccn o
{dd 	
ifee 
(ee 
idee 
!=ee 
useree 
.ee 
Idee 
)ee 
{ff 
returngg 
NotFoundgg 
(gg  
)gg  !
;gg! "
}hh 
ifjj 
(jj 

ModelStatejj 
.jj 
IsValidjj "
)jj" #
{kk 
tryll 
{mm 
_contextnn 
.nn 
Updatenn #
(nn# $
usernn$ (
)nn( )
;nn) *
awaitoo 
_contextoo "
.oo" #
SaveChangesAsyncoo# 3
(oo3 4
)oo4 5
;oo5 6
}pp 
catchqq 
(qq (
DbUpdateConcurrencyExceptionqq 3
)qq3 4
{rr 
ifss 
(ss 
!ss 

UserExistsss #
(ss# $
userss$ (
.ss( )
Idss) +
)ss+ ,
)ss, -
{tt 
returnuu 
NotFounduu '
(uu' (
)uu( )
;uu) *
}vv 
elseww 
{xx 
throwyy 
;yy 
}zz 
}{{ 
return|| 
RedirectToAction|| '
(||' (
nameof||( .
(||. /
Index||/ 4
)||4 5
)||5 6
;||6 7
}}} 
ViewData~~ 
[~~ 
$str~~ 
]~~ 
=~~  
new~~! $

SelectList~~% /
(~~/ 0
_context~~0 8
.~~8 9
Role~~9 =
,~~= >
$str~~? G
,~~G H
$str~~I P
,~~P Q
user~~R V
.~~V W
RoleId~~W ]
)~~] ^
;~~^ _
return 
View 
( 
user 
) 
; 
}
ÄÄ 	
[
ÉÉ 	
	Authorize
ÉÉ	 
(
ÉÉ 
Roles
ÉÉ 
=
ÉÉ 
$str
ÉÉ "
)
ÉÉ" #
]
ÉÉ# $
public
ÑÑ 
async
ÑÑ 
Task
ÑÑ 
<
ÑÑ 
IActionResult
ÑÑ '
>
ÑÑ' (
Delete
ÑÑ) /
(
ÑÑ/ 0
string
ÑÑ0 6
id
ÑÑ7 9
)
ÑÑ9 :
{
ÖÖ 	
if
ÜÜ 
(
ÜÜ 
null
ÜÜ 
==
ÜÜ 
id
ÜÜ 
)
ÜÜ 
{
áá 
return
àà 
NotFound
àà 
(
àà  
)
àà  !
;
àà! "
}
ââ 
var
ãã 
user
ãã 
=
ãã 
await
ãã 
_context
ãã %
.
ãã% &
User
ãã& *
.
åå 
Include
åå 
(
åå 
u
åå 
=>
åå 
u
åå 
.
åå  
Role
åå  $
)
åå$ %
.
çç !
FirstOrDefaultAsync
çç $
(
çç$ %
m
çç% &
=>
çç' )
m
çç* +
.
çç+ ,
Id
çç, .
==
çç/ 1
id
çç2 4
)
çç4 5
;
çç5 6
if
éé 
(
éé 
user
éé 
==
éé 
null
éé 
)
éé 
{
èè 
return
êê 
NotFound
êê 
(
êê  
)
êê  !
;
êê! "
}
ëë 
return
ìì 
View
ìì 
(
ìì 
user
ìì 
)
ìì 
;
ìì 
}
îî 	
[
óó 	
	Authorize
óó	 
(
óó 
Roles
óó 
=
óó 
$str
óó "
)
óó" #
]
óó# $
[
òò 	
HttpPost
òò	 
,
òò 

ActionName
òò 
(
òò 
$str
òò &
)
òò& '
]
òò' (
[
ôô 	&
ValidateAntiForgeryToken
ôô	 !
]
ôô! "
public
öö 
async
öö 
Task
öö 
<
öö 
IActionResult
öö '
>
öö' (
DeleteConfirmed
öö) 8
(
öö8 9
string
öö9 ?
id
öö@ B
)
ööB C
{
õõ 	
var
úú 
user
úú 
=
úú 
await
úú 
_context
úú %
.
úú% &
User
úú& *
.
úú* +
	FindAsync
úú+ 4
(
úú4 5
id
úú5 7
)
úú7 8
;
úú8 9
_context
ùù 
.
ùù 
User
ùù 
.
ùù 
Remove
ùù  
(
ùù  !
user
ùù! %
)
ùù% &
;
ùù& '
await
ûû 
_context
ûû 
.
ûû 
SaveChangesAsync
ûû +
(
ûû+ ,
)
ûû, -
;
ûû- .
return
üü 
RedirectToAction
üü #
(
üü# $
nameof
üü$ *
(
üü* +
Index
üü+ 0
)
üü0 1
)
üü1 2
;
üü2 3
}
†† 	
private
¢¢ 
bool
¢¢ 

UserExists
¢¢ 
(
¢¢  
string
¢¢  &
id
¢¢' )
)
¢¢) *
{
££ 	
return
§§ 
_context
§§ 
.
§§ 
User
§§  
.
§§  !
Any
§§! $
(
§§$ %
e
§§% &
=>
§§' )
e
§§* +
.
§§+ ,
Id
§§, .
==
§§/ 1
id
§§2 4
)
§§4 5
;
§§5 6
}
•• 	
}
¶¶ 
}ßß ì§
ëE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Migrations\20191109090716_addedIdentity.cs
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
.$ %

Migrations% /
{ 
public 

partial 
class 
addedIdentity &
:' (
	Migration) 2
{ 
	protected		 
override		 
void		 
Up		  "
(		" #
MigrationBuilder		# 3
migrationBuilder		4 D
)		D E
{

 	
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str #
,# $
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
string& ,
>, -
(- .
nullable. 6
:6 7
false8 =
)= >
,> ?
Name 
= 
table  
.  !
Column! '
<' (
string( .
>. /
(/ 0
	maxLength0 9
:9 :
$num; >
,> ?
nullable@ H
:H I
trueJ N
)N O
,O P
NormalizedName "
=# $
table% *
.* +
Column+ 1
<1 2
string2 8
>8 9
(9 :
	maxLength: C
:C D
$numE H
,H I
nullableJ R
:R S
trueT X
)X Y
,Y Z
ConcurrencyStamp $
=% &
table' ,
., -
Column- 3
<3 4
string4 :
>: ;
(; <
nullable< D
:D E
trueF J
)J K
} 
, 
constraints 
: 
table "
=># %
{ 
table 
. 

PrimaryKey $
($ %
$str% 5
,5 6
x7 8
=>9 ;
x< =
.= >
Id> @
)@ A
;A B
} 
) 
; 
migrationBuilder 
. 
CreateTable (
(( )
name 
: 
$str #
,# $
columns 
: 
table 
=> !
new" %
{ 
Id 
= 
table 
. 
Column %
<% &
string& ,
>, -
(- .
nullable. 6
:6 7
false8 =
)= >
,> ?
UserName 
= 
table $
.$ %
Column% +
<+ ,
string, 2
>2 3
(3 4
	maxLength4 =
:= >
$num? B
,B C
nullableD L
:L M
trueN R
)R S
,S T
NormalizedUserName &
=' (
table) .
.. /
Column/ 5
<5 6
string6 <
>< =
(= >
	maxLength> G
:G H
$numI L
,L M
nullableN V
:V W
trueX \
)\ ]
,] ^
Email   
=   
table   !
.  ! "
Column  " (
<  ( )
string  ) /
>  / 0
(  0 1
	maxLength  1 :
:  : ;
$num  < ?
,  ? @
nullable  A I
:  I J
true  K O
)  O P
,  P Q
NormalizedEmail!! #
=!!$ %
table!!& +
.!!+ ,
Column!!, 2
<!!2 3
string!!3 9
>!!9 :
(!!: ;
	maxLength!!; D
:!!D E
$num!!F I
,!!I J
nullable!!K S
:!!S T
true!!U Y
)!!Y Z
,!!Z [
EmailConfirmed"" "
=""# $
table""% *
.""* +
Column""+ 1
<""1 2
bool""2 6
>""6 7
(""7 8
nullable""8 @
:""@ A
false""B G
)""G H
,""H I
PasswordHash##  
=##! "
table### (
.##( )
Column##) /
<##/ 0
string##0 6
>##6 7
(##7 8
nullable##8 @
:##@ A
true##B F
)##F G
,##G H
SecurityStamp$$ !
=$$" #
table$$$ )
.$$) *
Column$$* 0
<$$0 1
string$$1 7
>$$7 8
($$8 9
nullable$$9 A
:$$A B
true$$C G
)$$G H
,$$H I
ConcurrencyStamp%% $
=%%% &
table%%' ,
.%%, -
Column%%- 3
<%%3 4
string%%4 :
>%%: ;
(%%; <
nullable%%< D
:%%D E
true%%F J
)%%J K
,%%K L
PhoneNumber&& 
=&&  !
table&&" '
.&&' (
Column&&( .
<&&. /
string&&/ 5
>&&5 6
(&&6 7
nullable&&7 ?
:&&? @
true&&A E
)&&E F
,&&F G 
PhoneNumberConfirmed'' (
='') *
table''+ 0
.''0 1
Column''1 7
<''7 8
bool''8 <
>''< =
(''= >
nullable''> F
:''F G
false''H M
)''M N
,''N O
TwoFactorEnabled(( $
=((% &
table((' ,
.((, -
Column((- 3
<((3 4
bool((4 8
>((8 9
(((9 :
nullable((: B
:((B C
false((D I
)((I J
,((J K

LockoutEnd)) 
=))  
table))! &
.))& '
Column))' -
<))- .
DateTimeOffset)). <
>))< =
())= >
nullable))> F
:))F G
true))H L
)))L M
,))M N
LockoutEnabled** "
=**# $
table**% *
.*** +
Column**+ 1
<**1 2
bool**2 6
>**6 7
(**7 8
nullable**8 @
:**@ A
false**B G
)**G H
,**H I
AccessFailedCount++ %
=++& '
table++( -
.++- .
Column++. 4
<++4 5
int++5 8
>++8 9
(++9 :
nullable++: B
:++B C
false++D I
)++I J
},, 
,,, 
constraints-- 
:-- 
table-- "
=>--# %
{.. 
table// 
.// 

PrimaryKey// $
(//$ %
$str//% 5
,//5 6
x//7 8
=>//9 ;
x//< =
.//= >
Id//> @
)//@ A
;//A B
}00 
)00 
;00 
migrationBuilder22 
.22 
CreateTable22 (
(22( )
name33 
:33 
$str33  
,33  !
columns44 
:44 
table44 
=>44 !
new44" %
{55 
category_id66 
=66  !
table66" '
.66' (
Column66( .
<66. /
int66/ 2
>662 3
(663 4
nullable664 <
:66< =
false66> C
)66C D
,66D E
category_name77 !
=77" #
table77$ )
.77) *
Column77* 0
<770 1
string771 7
>777 8
(778 9
unicode779 @
:77@ A
false77B G
,77G H
	maxLength77I R
:77R S
$num77T V
,77V W
nullable77X `
:77` a
false77b g
)77g h
}88 
,88 
constraints99 
:99 
table99 "
=>99# %
{:: 
table;; 
.;; 

PrimaryKey;; $
(;;$ %
$str;;% 2
,;;2 3
x;;4 5
=>;;6 8
x;;9 :
.;;: ;
category_id;;; F
);;F G
;;;G H
}<< 
)<< 
;<< 
migrationBuilder>> 
.>> 
CreateTable>> (
(>>( )
name?? 
:?? 
$str?? 
,??  
columns@@ 
:@@ 
table@@ 
=>@@ !
new@@" %
{AA 

product_idBB 
=BB  
tableBB! &
.BB& '
ColumnBB' -
<BB- .
intBB. 1
>BB1 2
(BB2 3
nullableBB3 ;
:BB; <
falseBB= B
)BBB C
,BBC D
product_nameCC  
=CC! "
tableCC# (
.CC( )
ColumnCC) /
<CC/ 0
stringCC0 6
>CC6 7
(CC7 8
unicodeCC8 ?
:CC? @
falseCCA F
,CCF G
	maxLengthCCH Q
:CCQ R
$numCCS U
,CCU V
nullableCCW _
:CC_ `
falseCCa f
)CCf g
,CCg h
product_descriptionDD '
=DD( )
tableDD* /
.DD/ 0
ColumnDD0 6
<DD6 7
stringDD7 =
>DD= >
(DD> ?
unicodeDD? F
:DDF G
falseDDH M
,DDM N
	maxLengthDDO X
:DDX Y
$numDDZ ]
,DD] ^
nullableDD_ g
:DDg h
falseDDi n
)DDn o
,DDo p
priceEE 
=EE 
tableEE !
.EE! "
ColumnEE" (
<EE( )
decimalEE) 0
>EE0 1
(EE1 2
typeEE2 6
:EE6 7
$strEE8 H
,EEH I
nullableEEJ R
:EER S
falseEET Y
)EEY Z
}FF 
,FF 
constraintsGG 
:GG 
tableGG "
=>GG# %
{HH 
tableII 
.II 

PrimaryKeyII $
(II$ %
$strII% 1
,II1 2
xII3 4
=>II5 7
xII8 9
.II9 :

product_idII: D
)IID E
;IIE F
}JJ 
)JJ 
;JJ 
migrationBuilderLL 
.LL 
CreateTableLL (
(LL( )
nameMM 
:MM 
$strMM 
,MM 
columnsNN 
:NN 
tableNN 
=>NN !
newNN" %
{OO 
role_idPP 
=PP 
tablePP #
.PP# $
ColumnPP$ *
<PP* +
intPP+ .
>PP. /
(PP/ 0
nullablePP0 8
:PP8 9
falsePP: ?
)PP? @
,PP@ A
roleQQ 
=QQ 
tableQQ  
.QQ  !
ColumnQQ! '
<QQ' (
stringQQ( .
>QQ. /
(QQ/ 0
unicodeQQ0 7
:QQ7 8
falseQQ9 >
,QQ> ?
	maxLengthQQ@ I
:QQI J
$numQQK M
,QQM N
nullableQQO W
:QQW X
falseQQY ^
)QQ^ _
}RR 
,RR 
constraintsSS 
:SS 
tableSS "
=>SS# %
{TT 
tableUU 
.UU 

PrimaryKeyUU $
(UU$ %
$strUU% .
,UU. /
xUU0 1
=>UU2 4
xUU5 6
.UU6 7
role_idUU7 >
)UU> ?
;UU? @
}VV 
)VV 
;VV 
migrationBuilderXX 
.XX 
CreateTableXX (
(XX( )
nameYY 
:YY 
$strYY (
,YY( )
columnsZZ 
:ZZ 
tableZZ 
=>ZZ !
newZZ" %
{[[ 
Id\\ 
=\\ 
table\\ 
.\\ 
Column\\ %
<\\% &
int\\& )
>\\) *
(\\* +
nullable\\+ 3
:\\3 4
false\\5 :
)\\: ;
.]] 

Annotation]] #
(]]# $
$str]]$ G
,]]G H,
 SqlServerValueGenerationStrategy]]I i
.]]i j
IdentityColumn]]j x
)]]x y
,]]y z
RoleId^^ 
=^^ 
table^^ "
.^^" #
Column^^# )
<^^) *
string^^* 0
>^^0 1
(^^1 2
nullable^^2 :
:^^: ;
false^^< A
)^^A B
,^^B C
	ClaimType__ 
=__ 
table__  %
.__% &
Column__& ,
<__, -
string__- 3
>__3 4
(__4 5
nullable__5 =
:__= >
true__? C
)__C D
,__D E

ClaimValue`` 
=``  
table``! &
.``& '
Column``' -
<``- .
string``. 4
>``4 5
(``5 6
nullable``6 >
:``> ?
true``@ D
)``D E
}aa 
,aa 
constraintsbb 
:bb 
tablebb "
=>bb# %
{cc 
tabledd 
.dd 

PrimaryKeydd $
(dd$ %
$strdd% :
,dd: ;
xdd< =
=>dd> @
xddA B
.ddB C
IdddC E
)ddE F
;ddF G
tableee 
.ee 

ForeignKeyee $
(ee$ %
nameff 
:ff 
$strff F
,ffF G
columngg 
:gg 
xgg  !
=>gg" $
xgg% &
.gg& '
RoleIdgg' -
,gg- .
principalTablehh &
:hh& '
$strhh( 5
,hh5 6
principalColumnii '
:ii' (
$strii) -
,ii- .
onDeletejj  
:jj  !
ReferentialActionjj" 3
.jj3 4
Cascadejj4 ;
)jj; <
;jj< =
}kk 
)kk 
;kk 
migrationBuildermm 
.mm 
CreateTablemm (
(mm( )
namenn 
:nn 
$strnn (
,nn( )
columnsoo 
:oo 
tableoo 
=>oo !
newoo" %
{pp 
Idqq 
=qq 
tableqq 
.qq 
Columnqq %
<qq% &
intqq& )
>qq) *
(qq* +
nullableqq+ 3
:qq3 4
falseqq5 :
)qq: ;
.rr 

Annotationrr #
(rr# $
$strrr$ G
,rrG H,
 SqlServerValueGenerationStrategyrrI i
.rri j
IdentityColumnrrj x
)rrx y
,rry z
UserIdss 
=ss 
tabless "
.ss" #
Columnss# )
<ss) *
stringss* 0
>ss0 1
(ss1 2
nullabless2 :
:ss: ;
falsess< A
)ssA B
,ssB C
	ClaimTypett 
=tt 
tablett  %
.tt% &
Columntt& ,
<tt, -
stringtt- 3
>tt3 4
(tt4 5
nullablett5 =
:tt= >
truett? C
)ttC D
,ttD E

ClaimValueuu 
=uu  
tableuu! &
.uu& '
Columnuu' -
<uu- .
stringuu. 4
>uu4 5
(uu5 6
nullableuu6 >
:uu> ?
trueuu@ D
)uuD E
}vv 
,vv 
constraintsww 
:ww 
tableww "
=>ww# %
{xx 
tableyy 
.yy 

PrimaryKeyyy $
(yy$ %
$stryy% :
,yy: ;
xyy< =
=>yy> @
xyyA B
.yyB C
IdyyC E
)yyE F
;yyF G
tablezz 
.zz 

ForeignKeyzz $
(zz$ %
name{{ 
:{{ 
$str{{ F
,{{F G
column|| 
:|| 
x||  !
=>||" $
x||% &
.||& '
UserId||' -
,||- .
principalTable}} &
:}}& '
$str}}( 5
,}}5 6
principalColumn~~ '
:~~' (
$str~~) -
,~~- .
onDelete  
:  !
ReferentialAction" 3
.3 4
Cascade4 ;
); <
;< =
}
ÄÄ 
)
ÄÄ 
;
ÄÄ 
migrationBuilder
ÇÇ 
.
ÇÇ 
CreateTable
ÇÇ (
(
ÇÇ( )
name
ÉÉ 
:
ÉÉ 
$str
ÉÉ (
,
ÉÉ( )
columns
ÑÑ 
:
ÑÑ 
table
ÑÑ 
=>
ÑÑ !
new
ÑÑ" %
{
ÖÖ 
LoginProvider
ÜÜ !
=
ÜÜ" #
table
ÜÜ$ )
.
ÜÜ) *
Column
ÜÜ* 0
<
ÜÜ0 1
string
ÜÜ1 7
>
ÜÜ7 8
(
ÜÜ8 9
nullable
ÜÜ9 A
:
ÜÜA B
false
ÜÜC H
)
ÜÜH I
,
ÜÜI J
ProviderKey
áá 
=
áá  !
table
áá" '
.
áá' (
Column
áá( .
<
áá. /
string
áá/ 5
>
áá5 6
(
áá6 7
nullable
áá7 ?
:
áá? @
false
ááA F
)
ááF G
,
ááG H!
ProviderDisplayName
àà '
=
àà( )
table
àà* /
.
àà/ 0
Column
àà0 6
<
àà6 7
string
àà7 =
>
àà= >
(
àà> ?
nullable
àà? G
:
ààG H
true
ààI M
)
ààM N
,
ààN O
UserId
ââ 
=
ââ 
table
ââ "
.
ââ" #
Column
ââ# )
<
ââ) *
string
ââ* 0
>
ââ0 1
(
ââ1 2
nullable
ââ2 :
:
ââ: ;
false
ââ< A
)
ââA B
}
ää 
,
ää 
constraints
ãã 
:
ãã 
table
ãã "
=>
ãã# %
{
åå 
table
çç 
.
çç 

PrimaryKey
çç $
(
çç$ %
$str
çç% :
,
çç: ;
x
çç< =
=>
çç> @
new
ççA D
{
ççE F
x
ççG H
.
ççH I
LoginProvider
ççI V
,
ççV W
x
ççX Y
.
ççY Z
ProviderKey
ççZ e
}
ççf g
)
ççg h
;
ççh i
table
éé 
.
éé 

ForeignKey
éé $
(
éé$ %
name
èè 
:
èè 
$str
èè F
,
èèF G
column
êê 
:
êê 
x
êê  !
=>
êê" $
x
êê% &
.
êê& '
UserId
êê' -
,
êê- .
principalTable
ëë &
:
ëë& '
$str
ëë( 5
,
ëë5 6
principalColumn
íí '
:
íí' (
$str
íí) -
,
íí- .
onDelete
ìì  
:
ìì  !
ReferentialAction
ìì" 3
.
ìì3 4
Cascade
ìì4 ;
)
ìì; <
;
ìì< =
}
îî 
)
îî 
;
îî 
migrationBuilder
ññ 
.
ññ 
CreateTable
ññ (
(
ññ( )
name
óó 
:
óó 
$str
óó '
,
óó' (
columns
òò 
:
òò 
table
òò 
=>
òò !
new
òò" %
{
ôô 
UserId
öö 
=
öö 
table
öö "
.
öö" #
Column
öö# )
<
öö) *
string
öö* 0
>
öö0 1
(
öö1 2
nullable
öö2 :
:
öö: ;
false
öö< A
)
ööA B
,
ööB C
RoleId
õõ 
=
õõ 
table
õõ "
.
õõ" #
Column
õõ# )
<
õõ) *
string
õõ* 0
>
õõ0 1
(
õõ1 2
nullable
õõ2 :
:
õõ: ;
false
õõ< A
)
õõA B
}
úú 
,
úú 
constraints
ùù 
:
ùù 
table
ùù "
=>
ùù# %
{
ûû 
table
üü 
.
üü 

PrimaryKey
üü $
(
üü$ %
$str
üü% 9
,
üü9 :
x
üü; <
=>
üü= ?
new
üü@ C
{
üüD E
x
üüF G
.
üüG H
UserId
üüH N
,
üüN O
x
üüP Q
.
üüQ R
RoleId
üüR X
}
üüY Z
)
üüZ [
;
üü[ \
table
†† 
.
†† 

ForeignKey
†† $
(
††$ %
name
°° 
:
°° 
$str
°° E
,
°°E F
column
¢¢ 
:
¢¢ 
x
¢¢  !
=>
¢¢" $
x
¢¢% &
.
¢¢& '
RoleId
¢¢' -
,
¢¢- .
principalTable
££ &
:
££& '
$str
££( 5
,
££5 6
principalColumn
§§ '
:
§§' (
$str
§§) -
,
§§- .
onDelete
••  
:
••  !
ReferentialAction
••" 3
.
••3 4
Cascade
••4 ;
)
••; <
;
••< =
table
¶¶ 
.
¶¶ 

ForeignKey
¶¶ $
(
¶¶$ %
name
ßß 
:
ßß 
$str
ßß E
,
ßßE F
column
®® 
:
®® 
x
®®  !
=>
®®" $
x
®®% &
.
®®& '
UserId
®®' -
,
®®- .
principalTable
©© &
:
©©& '
$str
©©( 5
,
©©5 6
principalColumn
™™ '
:
™™' (
$str
™™) -
,
™™- .
onDelete
´´  
:
´´  !
ReferentialAction
´´" 3
.
´´3 4
Cascade
´´4 ;
)
´´; <
;
´´< =
}
¨¨ 
)
¨¨ 
;
¨¨ 
migrationBuilder
ÆÆ 
.
ÆÆ 
CreateTable
ÆÆ (
(
ÆÆ( )
name
ØØ 
:
ØØ 
$str
ØØ (
,
ØØ( )
columns
∞∞ 
:
∞∞ 
table
∞∞ 
=>
∞∞ !
new
∞∞" %
{
±± 
UserId
≤≤ 
=
≤≤ 
table
≤≤ "
.
≤≤" #
Column
≤≤# )
<
≤≤) *
string
≤≤* 0
>
≤≤0 1
(
≤≤1 2
nullable
≤≤2 :
:
≤≤: ;
false
≤≤< A
)
≤≤A B
,
≤≤B C
LoginProvider
≥≥ !
=
≥≥" #
table
≥≥$ )
.
≥≥) *
Column
≥≥* 0
<
≥≥0 1
string
≥≥1 7
>
≥≥7 8
(
≥≥8 9
nullable
≥≥9 A
:
≥≥A B
false
≥≥C H
)
≥≥H I
,
≥≥I J
Name
¥¥ 
=
¥¥ 
table
¥¥  
.
¥¥  !
Column
¥¥! '
<
¥¥' (
string
¥¥( .
>
¥¥. /
(
¥¥/ 0
nullable
¥¥0 8
:
¥¥8 9
false
¥¥: ?
)
¥¥? @
,
¥¥@ A
Value
µµ 
=
µµ 
table
µµ !
.
µµ! "
Column
µµ" (
<
µµ( )
string
µµ) /
>
µµ/ 0
(
µµ0 1
nullable
µµ1 9
:
µµ9 :
true
µµ; ?
)
µµ? @
}
∂∂ 
,
∂∂ 
constraints
∑∑ 
:
∑∑ 
table
∑∑ "
=>
∑∑# %
{
∏∏ 
table
ππ 
.
ππ 

PrimaryKey
ππ $
(
ππ$ %
$str
ππ% :
,
ππ: ;
x
ππ< =
=>
ππ> @
new
ππA D
{
ππE F
x
ππG H
.
ππH I
UserId
ππI O
,
ππO P
x
ππQ R
.
ππR S
LoginProvider
ππS `
,
ππ` a
x
ππb c
.
ππc d
Name
ππd h
}
ππi j
)
ππj k
;
ππk l
table
∫∫ 
.
∫∫ 

ForeignKey
∫∫ $
(
∫∫$ %
name
ªª 
:
ªª 
$str
ªª F
,
ªªF G
column
ºº 
:
ºº 
x
ºº  !
=>
ºº" $
x
ºº% &
.
ºº& '
UserId
ºº' -
,
ºº- .
principalTable
ΩΩ &
:
ΩΩ& '
$str
ΩΩ( 5
,
ΩΩ5 6
principalColumn
ææ '
:
ææ' (
$str
ææ) -
,
ææ- .
onDelete
øø  
:
øø  !
ReferentialAction
øø" 3
.
øø3 4
Cascade
øø4 ;
)
øø; <
;
øø< =
}
¿¿ 
)
¿¿ 
;
¿¿ 
migrationBuilder
¬¬ 
.
¬¬ 
CreateTable
¬¬ (
(
¬¬( )
name
√√ 
:
√√ 
$str
√√ #
,
√√# $
columns
ƒƒ 
:
ƒƒ 
table
ƒƒ 
=>
ƒƒ !
new
ƒƒ" %
{
≈≈ 
stock_id
∆∆ 
=
∆∆ 
table
∆∆ $
.
∆∆$ %
Column
∆∆% +
<
∆∆+ ,
int
∆∆, /
>
∆∆/ 0
(
∆∆0 1
nullable
∆∆1 9
:
∆∆9 :
false
∆∆; @
)
∆∆@ A
,
∆∆A B

product_id
«« 
=
««  
table
««! &
.
««& '
Column
««' -
<
««- .
int
««. 1
>
««1 2
(
««2 3
nullable
««3 ;
:
««; <
false
««= B
)
««B C
,
««C D
remaining_stock
»» #
=
»»$ %
table
»»& +
.
»»+ ,
Column
»», 2
<
»»2 3
int
»»3 6
>
»»6 7
(
»»7 8
nullable
»»8 @
:
»»@ A
false
»»B G
)
»»G H
}
…… 
,
…… 
constraints
   
:
   
table
   "
=>
  # %
{
ÀÀ 
table
ÃÃ 
.
ÃÃ 

PrimaryKey
ÃÃ $
(
ÃÃ$ %
$str
ÃÃ% /
,
ÃÃ/ 0
x
ÃÃ1 2
=>
ÃÃ3 5
x
ÃÃ6 7
.
ÃÃ7 8
stock_id
ÃÃ8 @
)
ÃÃ@ A
;
ÃÃA B
table
ÕÕ 
.
ÕÕ 

ForeignKey
ÕÕ $
(
ÕÕ$ %
name
ŒŒ 
:
ŒŒ 
$str
ŒŒ )
,
ŒŒ) *
column
œœ 
:
œœ 
x
œœ  !
=>
œœ" $
x
œœ% &
.
œœ& '

product_id
œœ' 1
,
œœ1 2
principalTable
–– &
:
––& '
$str
––( 1
,
––1 2
principalColumn
—— '
:
——' (
$str
——) 5
,
——5 6
onDelete
““  
:
““  !
ReferentialAction
““" 3
.
““3 4
Restrict
““4 <
)
““< =
;
““= >
}
”” 
)
”” 
;
”” 
migrationBuilder
’’ 
.
’’ 
CreateTable
’’ (
(
’’( )
name
÷÷ 
:
÷÷ 
$str
÷÷ 
,
÷÷ 
columns
◊◊ 
:
◊◊ 
table
◊◊ 
=>
◊◊ !
new
◊◊" %
{
ÿÿ 
id
ŸŸ 
=
ŸŸ 
table
ŸŸ 
.
ŸŸ 
Column
ŸŸ %
<
ŸŸ% &
int
ŸŸ& )
>
ŸŸ) *
(
ŸŸ* +
nullable
ŸŸ+ 3
:
ŸŸ3 4
false
ŸŸ5 :
)
ŸŸ: ;
,
ŸŸ; <
Name
⁄⁄ 
=
⁄⁄ 
table
⁄⁄  
.
⁄⁄  !
Column
⁄⁄! '
<
⁄⁄' (
string
⁄⁄( .
>
⁄⁄. /
(
⁄⁄/ 0
unicode
⁄⁄0 7
:
⁄⁄7 8
false
⁄⁄9 >
,
⁄⁄> ?
	maxLength
⁄⁄@ I
:
⁄⁄I J
$num
⁄⁄K M
,
⁄⁄M N
nullable
⁄⁄O W
:
⁄⁄W X
false
⁄⁄Y ^
)
⁄⁄^ _
,
⁄⁄_ `
Address
€€ 
=
€€ 
table
€€ #
.
€€# $
Column
€€$ *
<
€€* +
string
€€+ 1
>
€€1 2
(
€€2 3
unicode
€€3 :
:
€€: ;
false
€€< A
,
€€A B
	maxLength
€€C L
:
€€L M
$num
€€N Q
,
€€Q R
nullable
€€S [
:
€€[ \
false
€€] b
)
€€b c
,
€€c d
Card_Number
‹‹ 
=
‹‹  !
table
‹‹" '
.
‹‹' (
Column
‹‹( .
<
‹‹. /
string
‹‹/ 5
>
‹‹5 6
(
‹‹6 7
unicode
‹‹7 >
:
‹‹> ?
false
‹‹@ E
,
‹‹E F
	maxLength
‹‹G P
:
‹‹P Q
$num
‹‹R T
,
‹‹T U
nullable
‹‹V ^
:
‹‹^ _
false
‹‹` e
)
‹‹e f
,
‹‹f g
role_id
›› 
=
›› 
table
›› #
.
››# $
Column
››$ *
<
››* +
int
››+ .
>
››. /
(
››/ 0
nullable
››0 8
:
››8 9
false
››: ?
)
››? @
}
ﬁﬁ 
,
ﬁﬁ 
constraints
ﬂﬂ 
:
ﬂﬂ 
table
ﬂﬂ "
=>
ﬂﬂ# %
{
‡‡ 
table
·· 
.
·· 

PrimaryKey
·· $
(
··$ %
$str
··% .
,
··. /
x
··0 1
=>
··2 4
x
··5 6
.
··6 7
id
··7 9
)
··9 :
;
··: ;
table
‚‚ 
.
‚‚ 

ForeignKey
‚‚ $
(
‚‚$ %
name
„„ 
:
„„ 
$str
„„ (
,
„„( )
column
‰‰ 
:
‰‰ 
x
‰‰  !
=>
‰‰" $
x
‰‰% &
.
‰‰& '
role_id
‰‰' .
,
‰‰. /
principalTable
ÂÂ &
:
ÂÂ& '
$str
ÂÂ( .
,
ÂÂ. /
principalColumn
ÊÊ '
:
ÊÊ' (
$str
ÊÊ) 2
,
ÊÊ2 3
onDelete
ÁÁ  
:
ÁÁ  !
ReferentialAction
ÁÁ" 3
.
ÁÁ3 4
Restrict
ÁÁ4 <
)
ÁÁ< =
;
ÁÁ= >
}
ËË 
)
ËË 
;
ËË 
migrationBuilder
ÍÍ 
.
ÍÍ 
CreateTable
ÍÍ (
(
ÍÍ( )
name
ÎÎ 
:
ÎÎ 
$str
ÎÎ 
,
ÎÎ 
columns
ÏÏ 
:
ÏÏ 
table
ÏÏ 
=>
ÏÏ !
new
ÏÏ" %
{
ÌÌ 
order_id
ÓÓ 
=
ÓÓ 
table
ÓÓ $
.
ÓÓ$ %
Column
ÓÓ% +
<
ÓÓ+ ,
int
ÓÓ, /
>
ÓÓ/ 0
(
ÓÓ0 1
nullable
ÓÓ1 9
:
ÓÓ9 :
false
ÓÓ; @
)
ÓÓ@ A
,
ÓÓA B
has_been_placed
ÔÔ #
=
ÔÔ$ %
table
ÔÔ& +
.
ÔÔ+ ,
Column
ÔÔ, 2
<
ÔÔ2 3
int
ÔÔ3 6
>
ÔÔ6 7
(
ÔÔ7 8
nullable
ÔÔ8 @
:
ÔÔ@ A
false
ÔÔB G
)
ÔÔG H
,
ÔÔH I
	client_id
 
=
 
table
  %
.
% &
Column
& ,
<
, -
int
- 0
>
0 1
(
1 2
nullable
2 :
:
: ;
false
< A
)
A B
}
ÒÒ 
,
ÒÒ 
constraints
ÚÚ 
:
ÚÚ 
table
ÚÚ "
=>
ÚÚ# %
{
ÛÛ 
table
ÙÙ 
.
ÙÙ 

PrimaryKey
ÙÙ $
(
ÙÙ$ %
$str
ÙÙ% /
,
ÙÙ/ 0
x
ÙÙ1 2
=>
ÙÙ3 5
x
ÙÙ6 7
.
ÙÙ7 8
order_id
ÙÙ8 @
)
ÙÙ@ A
;
ÙÙA B
table
ıı 
.
ıı 

ForeignKey
ıı $
(
ıı$ %
name
ˆˆ 
:
ˆˆ 
$str
ˆˆ )
,
ˆˆ) *
column
˜˜ 
:
˜˜ 
x
˜˜  !
=>
˜˜" $
x
˜˜% &
.
˜˜& '
	client_id
˜˜' 0
,
˜˜0 1
principalTable
¯¯ &
:
¯¯& '
$str
¯¯( .
,
¯¯. /
principalColumn
˘˘ '
:
˘˘' (
$str
˘˘) -
,
˘˘- .
onDelete
˙˙  
:
˙˙  !
ReferentialAction
˙˙" 3
.
˙˙3 4
Restrict
˙˙4 <
)
˙˙< =
;
˙˙= >
}
˚˚ 
)
˚˚ 
;
˚˚ 
migrationBuilder
˝˝ 
.
˝˝ 
CreateIndex
˝˝ (
(
˝˝( )
name
˛˛ 
:
˛˛ 
$str
˛˛ 2
,
˛˛2 3
table
ˇˇ 
:
ˇˇ 
$str
ˇˇ )
,
ˇˇ) *
column
ÄÄ 
:
ÄÄ 
$str
ÄÄ  
)
ÄÄ  !
;
ÄÄ! "
migrationBuilder
ÇÇ 
.
ÇÇ 
CreateIndex
ÇÇ (
(
ÇÇ( )
name
ÉÉ 
:
ÉÉ 
$str
ÉÉ %
,
ÉÉ% &
table
ÑÑ 
:
ÑÑ 
$str
ÑÑ $
,
ÑÑ$ %
column
ÖÖ 
:
ÖÖ 
$str
ÖÖ (
,
ÖÖ( )
unique
ÜÜ 
:
ÜÜ 
true
ÜÜ 
,
ÜÜ 
filter
áá 
:
áá 
$str
áá 6
)
áá6 7
;
áá7 8
migrationBuilder
ââ 
.
ââ 
CreateIndex
ââ (
(
ââ( )
name
ää 
:
ää 
$str
ää 2
,
ää2 3
table
ãã 
:
ãã 
$str
ãã )
,
ãã) *
column
åå 
:
åå 
$str
åå  
)
åå  !
;
åå! "
migrationBuilder
éé 
.
éé 
CreateIndex
éé (
(
éé( )
name
èè 
:
èè 
$str
èè 2
,
èè2 3
table
êê 
:
êê 
$str
êê )
,
êê) *
column
ëë 
:
ëë 
$str
ëë  
)
ëë  !
;
ëë! "
migrationBuilder
ìì 
.
ìì 
CreateIndex
ìì (
(
ìì( )
name
îî 
:
îî 
$str
îî 1
,
îî1 2
table
ïï 
:
ïï 
$str
ïï (
,
ïï( )
column
ññ 
:
ññ 
$str
ññ  
)
ññ  !
;
ññ! "
migrationBuilder
òò 
.
òò 
CreateIndex
òò (
(
òò( )
name
ôô 
:
ôô 
$str
ôô "
,
ôô" #
table
öö 
:
öö 
$str
öö $
,
öö$ %
column
õõ 
:
õõ 
$str
õõ )
)
õõ) *
;
õõ* +
migrationBuilder
ùù 
.
ùù 
CreateIndex
ùù (
(
ùù( )
name
ûû 
:
ûû 
$str
ûû %
,
ûû% &
table
üü 
:
üü 
$str
üü $
,
üü$ %
column
†† 
:
†† 
$str
†† ,
,
††, -
unique
°° 
:
°° 
true
°° 
,
°° 
filter
¢¢ 
:
¢¢ 
$str
¢¢ :
)
¢¢: ;
;
¢¢; <
migrationBuilder
§§ 
.
§§ 
CreateIndex
§§ (
(
§§( )
name
•• 
:
•• 
$str
•• *
,
••* +
table
¶¶ 
:
¶¶ 
$str
¶¶ 
,
¶¶ 
column
ßß 
:
ßß 
$str
ßß #
)
ßß# $
;
ßß$ %
migrationBuilder
©© 
.
©© 
CreateIndex
©© (
(
©©( )
name
™™ 
:
™™ 
$str
™™ 1
,
™™1 2
table
´´ 
:
´´ 
$str
´´ $
,
´´$ %
column
¨¨ 
:
¨¨ 
$str
¨¨ $
)
¨¨$ %
;
¨¨% &
migrationBuilder
ÆÆ 
.
ÆÆ 
CreateIndex
ÆÆ (
(
ÆÆ( )
name
ØØ 
:
ØØ 
$str
ØØ '
,
ØØ' (
table
∞∞ 
:
∞∞ 
$str
∞∞ 
,
∞∞ 
column
±± 
:
±± 
$str
±± !
)
±±! "
;
±±" #
}
≤≤ 	
	protected
¥¥ 
override
¥¥ 
void
¥¥ 
Down
¥¥  $
(
¥¥$ %
MigrationBuilder
¥¥% 5
migrationBuilder
¥¥6 F
)
¥¥F G
{
µµ 	
migrationBuilder
∂∂ 
.
∂∂ 
	DropTable
∂∂ &
(
∂∂& '
name
∑∑ 
:
∑∑ 
$str
∑∑ (
)
∑∑( )
;
∑∑) *
migrationBuilder
ππ 
.
ππ 
	DropTable
ππ &
(
ππ& '
name
∫∫ 
:
∫∫ 
$str
∫∫ (
)
∫∫( )
;
∫∫) *
migrationBuilder
ºº 
.
ºº 
	DropTable
ºº &
(
ºº& '
name
ΩΩ 
:
ΩΩ 
$str
ΩΩ (
)
ΩΩ( )
;
ΩΩ) *
migrationBuilder
øø 
.
øø 
	DropTable
øø &
(
øø& '
name
¿¿ 
:
¿¿ 
$str
¿¿ '
)
¿¿' (
;
¿¿( )
migrationBuilder
¬¬ 
.
¬¬ 
	DropTable
¬¬ &
(
¬¬& '
name
√√ 
:
√√ 
$str
√√ (
)
√√( )
;
√√) *
migrationBuilder
≈≈ 
.
≈≈ 
	DropTable
≈≈ &
(
≈≈& '
name
∆∆ 
:
∆∆ 
$str
∆∆  
)
∆∆  !
;
∆∆! "
migrationBuilder
»» 
.
»» 
	DropTable
»» &
(
»»& '
name
…… 
:
…… 
$str
…… 
)
…… 
;
…… 
migrationBuilder
ÀÀ 
.
ÀÀ 
	DropTable
ÀÀ &
(
ÀÀ& '
name
ÃÃ 
:
ÃÃ 
$str
ÃÃ #
)
ÃÃ# $
;
ÃÃ$ %
migrationBuilder
ŒŒ 
.
ŒŒ 
	DropTable
ŒŒ &
(
ŒŒ& '
name
œœ 
:
œœ 
$str
œœ #
)
œœ# $
;
œœ$ %
migrationBuilder
—— 
.
—— 
	DropTable
—— &
(
——& '
name
““ 
:
““ 
$str
““ #
)
““# $
;
““$ %
migrationBuilder
‘‘ 
.
‘‘ 
	DropTable
‘‘ &
(
‘‘& '
name
’’ 
:
’’ 
$str
’’ 
)
’’ 
;
’’ 
migrationBuilder
◊◊ 
.
◊◊ 
	DropTable
◊◊ &
(
◊◊& '
name
ÿÿ 
:
ÿÿ 
$str
ÿÿ 
)
ÿÿ  
;
ÿÿ  !
migrationBuilder
⁄⁄ 
.
⁄⁄ 
	DropTable
⁄⁄ &
(
⁄⁄& '
name
€€ 
:
€€ 
$str
€€ 
)
€€ 
;
€€ 
}
‹‹ 	
}
›› 
}ﬁﬁ ø
íE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Migrations\20191109091815_addedIdentity1.cs
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
.$ %

Migrations% /
{ 
public 

partial 
class 
addedIdentity1 '
:( )
	Migration* 3
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
}

 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{ 	
} 	
} 
} ø
íE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Migrations\20191109093339_addedIdentity2.cs
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
.$ %

Migrations% /
{ 
public 

partial 
class 
addedIdentity2 '
:( )
	Migration* 3
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
}

 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{ 	
} 	
} 
} ø
íE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Migrations\20191109100253_addedIdentity3.cs
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
.$ %

Migrations% /
{ 
public 

partial 
class 
addedIdentity3 '
:( )
	Migration* 3
{ 
	protected 
override 
void 
Up  "
(" #
MigrationBuilder# 3
migrationBuilder4 D
)D E
{ 	
}

 	
	protected 
override 
void 
Down  $
($ %
MigrationBuilder% 5
migrationBuilder6 F
)F G
{ 	
} 	
} 
} ª	
yE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Models\Category.cs
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
.$ %
Models% +
{ 
public 

partial 
class 
Category !
{ 
public 
Category 
( 
) 
{ 	
ProductCategory		 
=		 
new		 !
HashSet		" )
<		) *
ProductCategory		* 9
>		9 :
(		: ;
)		; <
;		< =
}

 	
public 
string 

CategoryId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
CategoryName "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
virtual 
ICollection "
<" #
ProductCategory# 2
>2 3
ProductCategory4 C
{D E
getF I
;I J
setK N
;N O
}P Q
} 
} ≤ 
ÅE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Models\EcommerceContext.cs
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
.$ %
Models% +
{ 
public 

partial 
class 
EcommerceContext )
:* +
IdentityDbContext, =
<= >
IdentityUser> J
>J K
{		 
public

 
EcommerceContext

 
(

  
)

  !
{ 	
} 	
public 
EcommerceContext 
(  
DbContextOptions  0
<0 1
EcommerceContext1 A
>A B
optionsC J
)J K
: 
base 
( 
options 
) 
{ 	
} 	
public 
virtual 
DbSet 
< 
Category %
>% &
Category' /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
public 
virtual 
DbSet 
< 
Order "
>" #
Order$ )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
virtual 
DbSet 
< 
Product $
>$ %
Product& -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
public 
virtual 
DbSet 
< 
ProductCategory ,
>, -
ProductCategory. =
{> ?
get@ C
;C D
setE H
;H I
}J K
public 
virtual 
DbSet 
< 
ProductOrder )
>) *
ProductOrder+ 7
{8 9
get: =
;= >
set? B
;B C
}D E
public 
virtual 
DbSet 
< 
Role !
>! "
Role# '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
virtual 
DbSet 
< 

StockEntry '
>' (

StockEntry) 3
{4 5
get6 9
;9 :
set; >
;> ?
}@ A
public 
virtual 
DbSet 
< 
User !
>! "
User# '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
	protected 
override 
void 
OnConfiguring  -
(- .#
DbContextOptionsBuilder. E
optionsBuilderF T
)T U
{ 	
if 
( 
! 
optionsBuilder 
.  
IsConfigured  ,
), -
{   
var!! 

jsonString!! 
=!!  
System!!! '
.!!' (
IO!!( *
.!!* +
File!!+ /
.!!/ 0
ReadAllText!!0 ;
(!!; <
$str!!< U
)!!U V
;!!V W
var"" 
	myJObject"" 
="" 
JObject""  '
.""' (
Parse""( -
(""- .

jsonString"". 8
)""8 9
;""9 :
var## 
connectionString## $
=##% &

@myJObject##' 1
.##1 2
SelectToken##2 =
(##= >
$str##> L
)##L M
.##M N
Value##N S
<##S T
string##T Z
>##Z [
(##[ \
)##\ ]
;##] ^
optionsBuilder$$ 
.$$ 
UseSqlServer$$ +
($$+ ,
connectionString$$, <
)$$< =
;$$= >
}%% 
}&& 	
	protected(( 
override(( 
void(( 
OnModelCreating((  /
(((/ 0
ModelBuilder((0 <
builder((= D
)((D E
{)) 	
base** 
.** 
OnModelCreating**  
(**  !
builder**! (
)**( )
;**) *
builder,, 
.,, 
HasAnnotation,, !
(,,! "
$str,," 2
,,,2 3
$str,,4 K
),,K L
;,,L M
builder.. 
... 
Entity.. 
<.. 
Category.. #
>..# $
(..$ %
entity..% +
=>.., .
{// 
entity00 
.00 
Property00 
(00  
e00  !
=>00" $
e00% &
.00& '

CategoryId00' 1
)001 2
.11 
HasColumnName11 "
(11" #
$str11# 0
)110 1
.22 
HasMaxLength22 !
(22! "
$num22" %
)22% &
.33 
ValueGeneratedNever33 (
(33( )
)33) *
;33* +
entity55 
.55 
Property55 
(55  
e55  !
=>55" $
e55% &
.55& '
CategoryName55' 3
)553 4
.66 

IsRequired66 
(66  
)66  !
.77 
HasColumnName77 "
(77" #
$str77# 2
)772 3
.88 
HasMaxLength88 !
(88! "
$num88" $
)88$ %
.99 
	IsUnicode99 
(99 
false99 $
)99$ %
;99% &
}:: 
):: 
;:: 
builder<< 
.<< 
Entity<< 
<<< 
Order<<  
><<  !
(<<! "
entity<<" (
=><<) +
{== 
entity>> 
.>> 
Property>> 
(>>  
e>>  !
=>>>" $
e>>% &
.>>& '
OrderId>>' .
)>>. /
.?? 
HasColumnName?? "
(??" #
$str??# -
)??- .
.@@ 
HasMaxLength@@ !
(@@! "
$num@@" %
)@@% &
.AA 
ValueGeneratedNeverAA (
(AA( )
)AA) *
;AA* +
entityCC 
.CC 
PropertyCC 
(CC  
eCC  !
=>CC" $
eCC% &
.CC& '
ClientIdCC' /
)CC/ 0
.DD 

IsRequiredDD 
(DD  
)DD  !
.EE 
HasColumnNameEE "
(EE" #
$strEE# .
)EE. /
.FF 
HasMaxLengthFF !
(FF! "
$numFF" %
)FF% &
;FF& '
entityHH 
.HH 
PropertyHH 
(HH  
eHH  !
=>HH" $
eHH% &
.HH& '
HasBeenPlacedHH' 4
)HH4 5
.HH5 6
HasColumnNameHH6 C
(HHC D
$strHHD U
)HHU V
;HHV W
entityJJ 
.JJ 
PropertyJJ 
(JJ  
eJJ  !
=>JJ" $
eJJ% &
.JJ& '
HasBeenConfirmedJJ' 7
)JJ7 8
.JJ8 9
HasColumnNameJJ9 F
(JJF G
$strJJG [
)JJ[ \
;JJ\ ]
entityLL 
.LL 
PropertyLL 
(LL  
eLL  !
=>LL" $
eLL% &
.LL& '
QuantityLL' /
)LL/ 0
.LL0 1
HasColumnNameLL1 >
(LL> ?
$strLL? I
)LLI J
;LLJ K
entityNN 
.NN 
HasOneNN 
(NN 
dNN 
=>NN  "
dNN# $
.NN$ %
ClientNN% +
)NN+ ,
.OO 
WithManyOO 
(OO 
pOO 
=>OO  "
pOO# $
.OO$ %
OrderOO% *
)OO* +
.PP 
HasForeignKeyPP "
(PP" #
dPP# $
=>PP% '
dPP( )
.PP) *
ClientIdPP* 2
)PP2 3
.QQ 
OnDeleteQQ 
(QQ 
DeleteBehaviorQQ ,
.QQ, -
ClientSetNullQQ- :
)QQ: ;
.RR 
HasConstraintNameRR &
(RR& '
$strRR' 2
)RR2 3
;RR3 4
}SS 
)SS 
;SS 
builderUU 
.UU 
EntityUU 
<UU 
ProductUU "
>UU" #
(UU# $
entityUU$ *
=>UU+ -
{VV 
entityWW 
.WW 
PropertyWW 
(WW  
eWW  !
=>WW" $
eWW% &
.WW& '
	ProductIdWW' 0
)WW0 1
.XX 
HasColumnNameXX "
(XX" #
$strXX# /
)XX/ 0
.YY 
HasMaxLengthYY !
(YY! "
$numYY" %
)YY% &
.ZZ 
ValueGeneratedNeverZZ (
(ZZ( )
)ZZ) *
;ZZ* +
entity\\ 
.\\ 
Property\\ 
(\\  
e\\  !
=>\\" $
e\\% &
.\\& '
Price\\' ,
)\\, -
.]] 
HasColumnName]] "
(]]" #
$str]]# *
)]]* +
.^^ 
HasColumnType^^ "
(^^" #
$str^^# 3
)^^3 4
;^^4 5
entity`` 
.`` 
Property`` 
(``  
e``  !
=>``" $
e``% &
.``& '
ProductDescription``' 9
)``9 :
.aa 

IsRequiredaa 
(aa  
)aa  !
.bb 
HasColumnNamebb "
(bb" #
$strbb# 8
)bb8 9
.cc 
HasMaxLengthcc !
(cc! "
$numcc" %
)cc% &
.dd 
	IsUnicodedd 
(dd 
falsedd $
)dd$ %
;dd% &
entityff 
.ff 
Propertyff 
(ff  
eff  !
=>ff" $
eff% &
.ff& '
ProductNameff' 2
)ff2 3
.gg 

IsRequiredgg 
(gg  
)gg  !
.hh 
HasColumnNamehh "
(hh" #
$strhh# 1
)hh1 2
.ii 
HasMaxLengthii !
(ii! "
$numii" $
)ii$ %
.jj 
	IsUnicodejj 
(jj 
falsejj $
)jj$ %
;jj% &
entityll 
.ll 
Propertyll 
(ll  
ell  !
=>ll" $
ell% &
.ll& '
ProductPicturell' 5
)ll5 6
.mm 

IsRequiredmm 
(mm  
)mm  !
.nn 
HasColumnNamenn "
(nn" #
$strnn# 4
)nn4 5
.oo 
HasMaxLengthoo !
(oo! "
$numoo" %
)oo% &
.pp 
	IsUnicodepp 
(pp 
falsepp $
)pp$ %
;pp% &
entityqq 
.qq 
Propertyqq 
(qq  
eqq  !
=>qq" $
eqq% &
.qq& '
SpecificationFileqq' 8
)qq8 9
.rr 

IsRequiredrr 
(rr  
)rr  !
.ss 
HasColumnNamess "
(ss" #
$strss# 7
)ss7 8
.tt 
HasMaxLengthtt !
(tt! "
$numtt" %
)tt% &
.uu 
	IsUnicodeuu 
(uu 
falseuu $
)uu$ %
;uu% &
}vv 
)vv 
;vv 
builderxx 
.xx 
Entityxx 
<xx 
ProductCategoryxx *
>xx* +
(xx+ ,
entityxx, 2
=>xx3 5
{yy 
entityzz 
.zz 
HasKeyzz 
(zz 
ezz 
=>zz  "
ezz# $
.zz$ %
IdProductCategoryzz% 6
)zz6 7
.{{ 
HasName{{ 
({{ 
$str{{ 4
){{4 5
;{{5 6
entity}} 
.}} 
ToTable}} 
(}} 
$str}} 1
)}}1 2
;}}2 3
entity 
. 
Property 
(  
e  !
=>" $
e% &
.& '
IdProductCategory' 8
)8 9
.
ÄÄ 
HasMaxLength
ÄÄ !
(
ÄÄ! "
$num
ÄÄ" %
)
ÄÄ% &
.
ÅÅ !
ValueGeneratedNever
ÅÅ (
(
ÅÅ( )
)
ÅÅ) *
;
ÅÅ* +
entity
ÉÉ 
.
ÉÉ 
Property
ÉÉ 
(
ÉÉ  
e
ÉÉ  !
=>
ÉÉ" $
e
ÉÉ% &
.
ÉÉ& '

CategoryId
ÉÉ' 1
)
ÉÉ1 2
.
ÑÑ 

IsRequired
ÑÑ 
(
ÑÑ  
)
ÑÑ  !
.
ÖÖ 
HasColumnName
ÖÖ "
(
ÖÖ" #
$str
ÖÖ# 0
)
ÖÖ0 1
.
ÜÜ 
HasMaxLength
ÜÜ !
(
ÜÜ! "
$num
ÜÜ" %
)
ÜÜ% &
;
ÜÜ& '
entity
àà 
.
àà 
Property
àà 
(
àà  
e
àà  !
=>
àà" $
e
àà% &
.
àà& '
	ProductId
àà' 0
)
àà0 1
.
ââ 

IsRequired
ââ 
(
ââ  
)
ââ  !
.
ää 
HasColumnName
ää "
(
ää" #
$str
ää# /
)
ää/ 0
.
ãã 
HasMaxLength
ãã !
(
ãã! "
$num
ãã" %
)
ãã% &
;
ãã& '
entity
çç 
.
çç 
HasOne
çç 
(
çç 
d
çç 
=>
çç  "
d
çç# $
.
çç$ %
Category
çç% -
)
çç- .
.
éé 
WithMany
éé 
(
éé 
p
éé 
=>
éé  "
p
éé# $
.
éé$ %
ProductCategory
éé% 4
)
éé4 5
.
èè 
HasForeignKey
èè "
(
èè" #
d
èè# $
=>
èè% '
d
èè( )
.
èè) *

CategoryId
èè* 4
)
èè4 5
.
êê 
OnDelete
êê 
(
êê 
DeleteBehavior
êê ,
.
êê, -
ClientSetNull
êê- :
)
êê: ;
.
ëë 
HasConstraintName
ëë &
(
ëë& '
$str
ëë' =
)
ëë= >
;
ëë> ?
entity
ìì 
.
ìì 
HasOne
ìì 
(
ìì 
d
ìì 
=>
ìì  "
d
ìì# $
.
ìì$ %
Product
ìì% ,
)
ìì, -
.
îî 
WithMany
îî 
(
îî 
p
îî 
=>
îî  "
p
îî# $
.
îî$ %
ProductCategory
îî% 4
)
îî4 5
.
ïï 
HasForeignKey
ïï "
(
ïï" #
d
ïï# $
=>
ïï% '
d
ïï( )
.
ïï) *
	ProductId
ïï* 3
)
ïï3 4
.
ññ 
OnDelete
ññ 
(
ññ 
DeleteBehavior
ññ ,
.
ññ, -
ClientSetNull
ññ- :
)
ññ: ;
.
óó 
HasConstraintName
óó &
(
óó& '
$str
óó' =
)
óó= >
;
óó> ?
}
òò 
)
òò 
;
òò 
builder
öö 
.
öö 
Entity
öö 
<
öö 
ProductOrder
öö '
>
öö' (
(
öö( )
entity
öö) /
=>
öö0 2
{
õõ 
entity
úú 
.
úú 
HasKey
úú 
(
úú 
e
úú 
=>
úú  "
e
úú# $
.
úú$ %
IdProductOrder
úú% 3
)
úú3 4
.
ùù 
HasName
ùù 
(
ùù 
$str
ùù 0
)
ùù0 1
;
ùù1 2
entity
üü 
.
üü 
Property
üü 
(
üü  
e
üü  !
=>
üü" $
e
üü% &
.
üü& '
IdProductOrder
üü' 5
)
üü5 6
.
†† 
HasMaxLength
†† !
(
††! "
$num
††" %
)
††% &
.
°° !
ValueGeneratedNever
°° (
(
°°( )
)
°°) *
;
°°* +
entity
££ 
.
££ 
Property
££ 
(
££  
e
££  !
=>
££" $
e
££% &
.
££& '
	OrderIdFk
££' 0
)
££0 1
.
§§ 

IsRequired
§§ 
(
§§  
)
§§  !
.
•• 
HasColumnName
•• "
(
••" #
$str
••# .
)
••. /
.
¶¶ 
HasMaxLength
¶¶ !
(
¶¶! "
$num
¶¶" %
)
¶¶% &
;
¶¶& '
entity
®® 
.
®® 
Property
®® 
(
®®  
e
®®  !
=>
®®" $
e
®®% &
.
®®& '
ProductIdFk
®®' 2
)
®®2 3
.
©© 

IsRequired
©© 
(
©©  
)
©©  !
.
™™ 
HasColumnName
™™ "
(
™™" #
$str
™™# 0
)
™™0 1
.
´´ 
HasMaxLength
´´ !
(
´´! "
$num
´´" %
)
´´% &
;
´´& '
entity
≠≠ 
.
≠≠ 
HasOne
≠≠ 
(
≠≠ 
d
≠≠ 
=>
≠≠  "
d
≠≠# $
.
≠≠$ %!
OrderIdFkNavigation
≠≠% 8
)
≠≠8 9
.
ÆÆ 
WithMany
ÆÆ 
(
ÆÆ 
p
ÆÆ 
=>
ÆÆ  "
p
ÆÆ# $
.
ÆÆ$ %
ProductOrder
ÆÆ% 1
)
ÆÆ1 2
.
ØØ 
HasForeignKey
ØØ "
(
ØØ" #
d
ØØ# $
=>
ØØ% '
d
ØØ( )
.
ØØ) *
	OrderIdFk
ØØ* 3
)
ØØ3 4
.
∞∞ 
OnDelete
∞∞ 
(
∞∞ 
DeleteBehavior
∞∞ ,
.
∞∞, -
ClientSetNull
∞∞- :
)
∞∞: ;
.
±± 
HasConstraintName
±± &
(
±±& '
$str
±±' :
)
±±: ;
;
±±; <
entity
≥≥ 
.
≥≥ 
HasOne
≥≥ 
(
≥≥ 
d
≥≥ 
=>
≥≥  "
d
≥≥# $
.
≥≥$ %#
ProductIdFkNavigation
≥≥% :
)
≥≥: ;
.
¥¥ 
WithMany
¥¥ 
(
¥¥ 
p
¥¥ 
=>
¥¥  "
p
¥¥# $
.
¥¥$ %
ProductOrder
¥¥% 1
)
¥¥1 2
.
µµ 
HasForeignKey
µµ "
(
µµ" #
d
µµ# $
=>
µµ% '
d
µµ( )
.
µµ) *
ProductIdFk
µµ* 5
)
µµ5 6
.
∂∂ 
OnDelete
∂∂ 
(
∂∂ 
DeleteBehavior
∂∂ ,
.
∂∂, -
ClientSetNull
∂∂- :
)
∂∂: ;
.
∑∑ 
HasConstraintName
∑∑ &
(
∑∑& '
$str
∑∑' :
)
∑∑: ;
;
∑∑; <
}
∏∏ 
)
∏∏ 
;
∏∏ 
builder
∫∫ 
.
∫∫ 
Entity
∫∫ 
<
∫∫ 
Role
∫∫ 
>
∫∫  
(
∫∫  !
entity
∫∫! '
=>
∫∫( *
{
ªª 
entity
ºº 
.
ºº 
Property
ºº 
(
ºº  
e
ºº  !
=>
ºº" $
e
ºº% &
.
ºº& '
RoleId
ºº' -
)
ºº- .
.
ΩΩ 
HasColumnName
ΩΩ "
(
ΩΩ" #
$str
ΩΩ# ,
)
ΩΩ, -
.
ææ !
ValueGeneratedNever
ææ (
(
ææ( )
)
ææ) *
;
ææ* +
entity
¿¿ 
.
¿¿ 
Property
¿¿ 
(
¿¿  
e
¿¿  !
=>
¿¿" $
e
¿¿% &
.
¿¿& '
Role1
¿¿' ,
)
¿¿, -
.
¡¡ 

IsRequired
¡¡ 
(
¡¡  
)
¡¡  !
.
¬¬ 
HasColumnName
¬¬ "
(
¬¬" #
$str
¬¬# )
)
¬¬) *
.
√√ 
HasMaxLength
√√ !
(
√√! "
$num
√√" $
)
√√$ %
.
ƒƒ 
	IsUnicode
ƒƒ 
(
ƒƒ 
false
ƒƒ $
)
ƒƒ$ %
;
ƒƒ% &
}
≈≈ 
)
≈≈ 
;
≈≈ 
builder
«« 
.
«« 
Entity
«« 
<
«« 

StockEntry
«« %
>
««% &
(
««& '
entity
««' -
=>
««. 0
{
»» 
entity
…… 
.
…… 
HasKey
…… 
(
…… 
e
…… 
=>
……  "
e
……# $
.
……$ %
StockId
……% ,
)
……, -
.
   
HasName
   
(
   
$str
   '
)
  ' (
;
  ( )
entity
ÃÃ 
.
ÃÃ 
ToTable
ÃÃ 
(
ÃÃ 
$str
ÃÃ ,
)
ÃÃ, -
;
ÃÃ- .
entity
ŒŒ 
.
ŒŒ 
Property
ŒŒ 
(
ŒŒ  
e
ŒŒ  !
=>
ŒŒ" $
e
ŒŒ% &
.
ŒŒ& '
StockId
ŒŒ' .
)
ŒŒ. /
.
œœ 
HasColumnName
œœ "
(
œœ" #
$str
œœ# -
)
œœ- .
.
–– 
HasMaxLength
–– !
(
––! "
$num
––" %
)
––% &
.
—— !
ValueGeneratedNever
—— (
(
——( )
)
——) *
;
——* +
entity
”” 
.
”” 
Property
”” 
(
””  
e
””  !
=>
””" $
e
””% &
.
””& '
	ProductId
””' 0
)
””0 1
.
‘‘ 

IsRequired
‘‘ 
(
‘‘  
)
‘‘  !
.
’’ 
HasColumnName
’’ "
(
’’" #
$str
’’# /
)
’’/ 0
.
÷÷ 
HasMaxLength
÷÷ !
(
÷÷! "
$num
÷÷" %
)
÷÷% &
;
÷÷& '
entity
ÿÿ 
.
ÿÿ 
Property
ÿÿ 
(
ÿÿ  
e
ÿÿ  !
=>
ÿÿ" $
e
ÿÿ% &
.
ÿÿ& '
RemainingStock
ÿÿ' 5
)
ÿÿ5 6
.
ÿÿ6 7
HasColumnName
ÿÿ7 D
(
ÿÿD E
$str
ÿÿE V
)
ÿÿV W
;
ÿÿW X
entity
⁄⁄ 
.
⁄⁄ 
HasOne
⁄⁄ 
(
⁄⁄ 
d
⁄⁄ 
=>
⁄⁄  "
d
⁄⁄# $
.
⁄⁄$ %
Product
⁄⁄% ,
)
⁄⁄, -
.
€€ 
WithMany
€€ 
(
€€ 
p
€€ 
=>
€€  "
p
€€# $
.
€€$ %

StockEntry
€€% /
)
€€/ 0
.
‹‹ 
HasForeignKey
‹‹ "
(
‹‹" #
d
‹‹# $
=>
‹‹% '
d
‹‹( )
.
‹‹) *
	ProductId
‹‹* 3
)
‹‹3 4
.
›› 
OnDelete
›› 
(
›› 
DeleteBehavior
›› ,
.
››, -
ClientSetNull
››- :
)
››: ;
.
ﬁﬁ 
HasConstraintName
ﬁﬁ &
(
ﬁﬁ& '
$str
ﬁﬁ' 8
)
ﬁﬁ8 9
;
ﬁﬁ9 :
}
ﬂﬂ 
)
ﬂﬂ 
;
ﬂﬂ 
builder
·· 
.
·· 
Entity
·· 
<
·· 
User
·· 
>
··  
(
··  !
entity
··! '
=>
··( *
{
‚‚ 
entity
„„ 
.
„„ 
Property
„„ 
(
„„  
e
„„  !
=>
„„" $
e
„„% &
.
„„& '
Id
„„' )
)
„„) *
.
‰‰ 
HasColumnName
‰‰ "
(
‰‰" #
$str
‰‰# '
)
‰‰' (
.
ÂÂ 
HasMaxLength
ÂÂ !
(
ÂÂ! "
$num
ÂÂ" %
)
ÂÂ% &
.
ÊÊ !
ValueGeneratedNever
ÊÊ (
(
ÊÊ( )
)
ÊÊ) *
;
ÊÊ* +
entity
ËË 
.
ËË 
Property
ËË 
(
ËË  
e
ËË  !
=>
ËË" $
e
ËË% &
.
ËË& '
Address
ËË' .
)
ËË. /
.
ÈÈ 

IsRequired
ÈÈ 
(
ÈÈ  
)
ÈÈ  !
.
ÍÍ 
HasMaxLength
ÍÍ !
(
ÍÍ! "
$num
ÍÍ" %
)
ÍÍ% &
.
ÎÎ 
	IsUnicode
ÎÎ 
(
ÎÎ 
false
ÎÎ $
)
ÎÎ$ %
;
ÎÎ% &
entity
ÌÌ 
.
ÌÌ 
Property
ÌÌ 
(
ÌÌ  
e
ÌÌ  !
=>
ÌÌ" $
e
ÌÌ% &
.
ÌÌ& '

CardNumber
ÌÌ' 1
)
ÌÌ1 2
.
ÓÓ 

IsRequired
ÓÓ 
(
ÓÓ  
)
ÓÓ  !
.
ÔÔ 
HasColumnName
ÔÔ "
(
ÔÔ" #
$str
ÔÔ# 0
)
ÔÔ0 1
.
 
HasMaxLength
 !
(
! "
$num
" $
)
$ %
.
ÒÒ 
	IsUnicode
ÒÒ 
(
ÒÒ 
false
ÒÒ $
)
ÒÒ$ %
;
ÒÒ% &
entity
ÛÛ 
.
ÛÛ 
Property
ÛÛ 
(
ÛÛ  
e
ÛÛ  !
=>
ÛÛ" $
e
ÛÛ% &
.
ÛÛ& '
Name
ÛÛ' +
)
ÛÛ+ ,
.
ÙÙ 

IsRequired
ÙÙ 
(
ÙÙ  
)
ÙÙ  !
.
ıı 
HasMaxLength
ıı !
(
ıı! "
$num
ıı" $
)
ıı$ %
.
ˆˆ 
	IsUnicode
ˆˆ 
(
ˆˆ 
false
ˆˆ $
)
ˆˆ$ %
;
ˆˆ% &
entity
¯¯ 
.
¯¯ 
Property
¯¯ 
(
¯¯  
e
¯¯  !
=>
¯¯" $
e
¯¯% &
.
¯¯& '
RoleId
¯¯' -
)
¯¯- .
.
¯¯. /
HasColumnName
¯¯/ <
(
¯¯< =
$str
¯¯= F
)
¯¯F G
;
¯¯G H
entity
˙˙ 
.
˙˙ 
HasOne
˙˙ 
(
˙˙ 
d
˙˙ 
=>
˙˙  "
d
˙˙# $
.
˙˙$ %
Role
˙˙% )
)
˙˙) *
.
˚˚ 
WithMany
˚˚ 
(
˚˚ 
p
˚˚ 
=>
˚˚  "
p
˚˚# $
.
˚˚$ %
User
˚˚% )
)
˚˚) *
.
¸¸ 
HasForeignKey
¸¸ "
(
¸¸" #
d
¸¸# $
=>
¸¸% '
d
¸¸( )
.
¸¸) *
RoleId
¸¸* 0
)
¸¸0 1
.
˝˝ 
OnDelete
˝˝ 
(
˝˝ 
DeleteBehavior
˝˝ ,
.
˝˝, -
ClientSetNull
˝˝- :
)
˝˝: ;
.
˛˛ 
HasConstraintName
˛˛ &
(
˛˛& '
$str
˛˛' 1
)
˛˛1 2
;
˛˛2 3
}
ˇˇ 
)
ˇˇ 
;
ˇˇ 
}
ÄÄ 	
}
ÅÅ 
}ÇÇ €
E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Models\ErrorViewModel.cs
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
.$ %
Models% +
{ 
public 

class 
ErrorViewModel 
{ 
public 
string 
	RequestId 
{  !
get" %
;% &
set' *
;* +
}, -
public		 
bool		 
ShowRequestId		 !
=>		" $
!		% &
string		& ,
.		, -
IsNullOrEmpty		- :
(		: ;
	RequestId		; D
)		D E
;		E F
}

 
} ß
vE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Models\Order.cs
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
.$ %
Models% +
{ 
public 

partial 
class 
Order 
{ 
public 
Order 
( 
) 
{ 	
ProductOrder		 
=		 
new		 
HashSet		 &
<		& '
ProductOrder		' 3
>		3 4
(		4 5
)		5 6
;		6 7
}

 	
public 
string 
OrderId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
HasBeenPlaced  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
ClientId 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
HasBeenConfirmed &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
int 
Quantity 
{ 
get !
;! "
set# &
;& '
}( )
public 
virtual 
User 
Client "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
virtual 
ICollection "
<" #
ProductOrder# /
>/ 0
ProductOrder1 =
{> ?
get@ C
;C D
setE H
;H I
}J K
} 
} ∂
xE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Models\Product.cs
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
.$ %
Models% +
{ 
public 

partial 
class 
Product  
{ 
public 
Product 
( 
) 
{ 	
ProductCategory		 
=		 
new		 !
HashSet		" )
<		) *
ProductCategory		* 9
>		9 :
(		: ;
)		; <
;		< =
ProductOrder

 
=

 
new

 
HashSet

 &
<

& '
ProductOrder

' 3
>

3 4
(

4 5
)

5 6
;

6 7

StockEntry 
= 
new 
HashSet $
<$ %

StockEntry% /
>/ 0
(0 1
)1 2
;2 3
} 	
public 
string 
	ProductId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
ProductName !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
ProductDescription (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
string 
ProductPicture $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
decimal 
Price 
{ 
get "
;" #
set$ '
;' (
}) *
public 
decimal 
Sales 
{ 
get  #
;# $
set% (
;( )
}* +
public 
decimal 
Nprice 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
SpecificationFile '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
virtual 
ICollection "
<" #
ProductCategory# 2
>2 3
ProductCategory4 C
{D E
getF I
;I J
setK N
;N O
}P Q
public 
virtual 
ICollection "
<" #
ProductOrder# /
>/ 0
ProductOrder1 =
{> ?
get@ C
;C D
setE H
;H I
}J K
public 
virtual 
ICollection "
<" #

StockEntry# -
>- .

StockEntry/ 9
{: ;
get< ?
;? @
setA D
;D E
}F G
} 
} ∏	
ÄE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Models\ProductCategory.cs
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
.$ %
Models% +
{ 
public 

partial 
class 
ProductCategory (
{ 
public 
string 
	ProductId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 

CategoryId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
IdProductCategory '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public

 
virtual

 
Category

 
Category

  (
{

) *
get

+ .
;

. /
set

0 3
;

3 4
}

5 6
public 
virtual 
Product 
Product &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
} 
} ≈	
}E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Models\ProductOrder.cs
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
.$ %
Models% +
{ 
public 

partial 
class 
ProductOrder %
{ 
public 
string 
	OrderIdFk 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
ProductIdFk !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
IdProductOrder $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public

 
virtual

 
Order

 
OrderIdFkNavigation

 0
{

1 2
get

3 6
;

6 7
set

8 ;
;

; <
}

= >
public 
virtual 
Product !
ProductIdFkNavigation 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
} 
} ı
uE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Models\Role.cs
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
.$ %
Models% +
{ 
public 

partial 
class 
Role 
{ 
public 
Role 
( 
) 
{ 	
User		 
=		 
new		 
HashSet		 
<		 
User		 #
>		# $
(		$ %
)		% &
;		& '
}

 	
public 
int 
RoleId 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
Role1 
{ 
get !
;! "
set# &
;& '
}( )
public 
virtual 
ICollection "
<" #
User# '
>' (
User) -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
} 
} Ä
{E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Models\StockEntry.cs
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
.$ %
Models% +
{ 
public 

partial 
class 

StockEntry #
{ 
public 
string 
StockId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
	ProductId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
int 
? 
RemainingStock "
{# $
get% (
;( )
set* -
;- .
}/ 0
public

 
virtual

 
Product

 
Product

 &
{

' (
get

) ,
;

, -
set

. 1
;

1 2
}

3 4
} 
} Ú
uE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Models\User.cs
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
.$ %
Models% +
{ 
public 

partial 
class 
User 
{ 
public 
User 
( 
) 
{ 	
Order		 
=		 
new		 
HashSet		 
<		  
Order		  %
>		% &
(		& '
)		' (
;		( )
}

 	
public 
string 
Id 
{ 
get 
; 
set  #
;# $
}% &
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Address 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 

CardNumber  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
int 
RoleId 
{ 
get 
;  
set! $
;$ %
}& '
public 
virtual 
Role 
Role  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
virtual 
ICollection "
<" #
Order# (
>( )
Order* /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
} 
} π	
qE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Program.cs
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
{ 
public 

static 
class 
Program 
{ 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{		 	 
CreateWebHostBuilder

  
(

  !
args

! %
)

% &
.

& '
Build

' ,
(

, -
)

- .
.

. /
Run

/ 2
(

2 3
)

3 4
;

4 5
} 	
public 
static 
IWebHostBuilder % 
CreateWebHostBuilder& :
(: ;
string; A
[A B
]B C
argsD H
)H I
=>J L
WebHost 
.  
CreateDefaultBuilder (
(( )
args) -
)- .
. 

UseStartup 
< 
Startup #
># $
($ %
)% &
;& '
} 
} Ò&
qE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Startup.cs
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
{ 
public 

class 
Startup 
{ 
public 
Startup 
( 
IConfiguration %
configuration& 3
)3 4
{ 	
Configuration 
= 
configuration )
;) *
} 	
public 
IConfiguration 
Configuration +
{, -
get. 1
;1 2
}3 4
public 
void 
ConfigureServices %
(% &
IServiceCollection& 8
services9 A
)A B
{ 	
services 
. 
	Configure 
< 
CookiePolicyOptions 2
>2 3
(3 4
options4 ;
=>< >
{ 
options 
. 
CheckConsentNeeded *
=+ ,
context- 4
=>5 7
true8 <
;< =
options 
. !
MinimumSameSitePolicy -
=. /
SameSiteMode0 <
.< =
None= A
;A B
}   
)   
;   
services## 
.## 
AddMvc## 
(## 
)## 
.## #
SetCompatibilityVersion## 5
(##5 6 
CompatibilityVersion##6 J
.##J K
Version_2_2##K V
)##V W
;##W X
var%% 

jsonString%% 
=%% 
File%% !
.%%! "
ReadAllText%%" -
(%%- .
$str%%. G
)%%G H
;%%H I
var&& 
	myJObject&& 
=&& 
JObject&& #
.&&# $
Parse&&$ )
(&&) *

jsonString&&* 4
)&&4 5
;&&5 6
var'' 

connection'' 
='' 

@myJObject'' '
.''' (
SelectToken''( 3
(''3 4
$str''4 B
)''B C
.''C D
Value''D I
<''I J
string''J P
>''P Q
(''Q R
)''R S
;''S T
services(( 
.(( 
AddDbContext(( !
<((! "
EcommerceContext((" 2
>((2 3
(((3 4
options((4 ;
=>((< >
options((? F
.((F G
UseSqlServer((G S
(((S T

connection((T ^
)((^ _
)((_ `
;((` a
services)) 
.)) 
AddDefaultIdentity)) '
<))' (
IdentityUser))( 4
>))4 5
())5 6
)))6 7
.** 
AddRoles** 
<** 
IdentityRole** #
>**# $
(**$ %
)**% &
.++ $
AddDefaultTokenProviders++ &
(++& '
)++' (
.,, $
AddEntityFrameworkStores,, &
<,,& '
EcommerceContext,,' 7
>,,7 8
(,,8 9
),,9 :
;,,: ;
services-- 
.-- 
AddSingleton-- !
<--! " 
IHttpContextAccessor--" 6
,--6 7
HttpContextAccessor--8 K
>--K L
(--L M
)--M N
;--N O
}.. 	
public11 
void11 
	Configure11 
(11 
IApplicationBuilder11 1
app112 5
,115 6
IHostingEnvironment117 J
env11K N
)11N O
{22 	
if33 
(33 
env33 
.33 
IsDevelopment33 !
(33! "
)33" #
)33# $
{44 
app55 
.55 %
UseDeveloperExceptionPage55 -
(55- .
)55. /
;55/ 0
}66 
else77 
{88 
app99 
.99 
UseExceptionHandler99 '
(99' (
$str99( 5
)995 6
;996 7
app;; 
.;; 
UseHsts;; 
(;; 
);; 
;;; 
}<< 
app?? 
.?? 
UseHttpsRedirection?? #
(??# $
)??$ %
;??% &
app@@ 
.@@ 
UseStaticFiles@@ 
(@@ 
)@@  
;@@  !
appAA 
.AA 
UseCookiePolicyAA 
(AA  
)AA  !
;AA! "
appBB 
.BB 
UseAuthenticationBB !
(BB! "
)BB" #
;BB# $
appDD 
.DD 
UseMvcDD 
(DD 
routesDD 
=>DD  
{EE 
routesFF 
.FF 
MapRouteFF 
(FF  
nameGG 
:GG 
$strGG #
,GG# $
templateHH 
:HH 
$strHH Z
)HHZ [
;HH[ \
}II 
)II 
;II 
}JJ 	
}KK 
}LL 