ľ	
E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\IdentityHostingStartup.cs
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
} ô
E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\AccessDenied.cshtml.cs
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
} 
E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\ConfirmEmail.cshtml.cs
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
}** Ň\
E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\ExternalLogin.cshtml.cs
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
false	KK{ 
,
KK 
bypassTwoFactor
KK 
:
KK 
true
KK 
)
KK 
;
KK 
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
LoginProvider	NN} 
)
NN 
;
NN 
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
 
.
 
AddModelError
 ,
(
, -
string
- 3
.
3 4
Empty
4 9
,
9 :
error
; @
.
@ A
Description
A L
)
L M
;
M N
}
 
}
 
LoginProvider
 
=
 
info
  
.
  !
LoginProvider
! .
;
. /
	ReturnUrl
 
=
 
	returnUrl
 !
;
! "
return
 
Page
 
(
 
)
 
;
 
}
 	
}
 
} Í!
E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\ForgotPassword.cshtml.cs
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
}AA Ĺ
¨E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\ForgotPasswordConfirmation.cshtml.cs
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
} ¤
E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\Lockout.cshtml.cs
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
} ˙8
E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\Login.cshtml.cs
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
lockoutOnFailure	LLu 
:
LL 
true
LL 
)
LL 
;
LL 
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
}ff <
E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\LoginWith2fa.cshtml.cs
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
RememberMachine	LLu 
)
LL 
;
LL 
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
}`` ë2
ŁE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\LoginWithRecoveryCode.cshtml.cs
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
)	 
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
}WW Ő
E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\Logout.cshtml.cs
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
}** ?
ŁE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\Manage\ChangePassword.cshtml.cs
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
)	'' 
]
'' 
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
}aa ţ3
§E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\Manage\DeletePersonalData.cshtml.cs
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
}RR ó(
E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\Manage\Disable2fa.cshtml.cs
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
 ' as it's not currently enabled.	$$y 
"
$$ 
)
$$ 
;
$$ 
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
	GetUserId	55~ 
(
55 
User
55 
)
55 
}
55 
'.
55 
"
55 
)
55 
;
55 
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
}== Ż"
ŠE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\Manage\DownloadPersonalData.cshtml.cs
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
}22 Ůd
¨E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\Manage\EnableAuthenticator.cshtml.cs
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
 	
var
 
result
 
=
 
new
 
StringBuilder
 *
(
* +
)
+ ,
;
, -
int
 
currentPosition
 
=
  !
$num
" #
;
# $
while
 
(
 
currentPosition
 "
+
# $
$num
% &
<
' (
unformattedKey
) 7
.
7 8
Length
8 >
)
> ?
{
 
result
 
.
 
Append
 
(
 
unformattedKey
 ,
.
, -
	Substring
- 6
(
6 7
currentPosition
7 F
,
F G
$num
H I
)
I J
)
J K
.
K L
Append
L R
(
R S
$str
S V
)
V W
;
W X
currentPosition
 
+=
  "
$num
# $
;
$ %
}
 
if
 
(
 
currentPosition
 
<
  !
unformattedKey
" 0
.
0 1
Length
1 7
)
7 8
{
 
result
 
.
 
Append
 
(
 
unformattedKey
 ,
.
, -
	Substring
- 6
(
6 7
currentPosition
7 F
)
F G
)
G H
;
H I
}
 
return
 
result
 
.
 
ToString
 "
(
" #
)
# $
.
$ %
ToLowerInvariant
% 5
(
5 6
)
6 7
;
7 8
}
 	
private
 
string
 
GenerateQrCodeUri
 (
(
( )
string
) /
email
0 5
,
5 6
string
7 =
unformattedKey
> L
)
L M
{
 	
return
 
string
 
.
 
Format
  
(
  !$
AuthenticatorUriFormat
 &
,
& '
_urlEncoder
 
.
 
Encode
 "
(
" #
$str
# ?
)
? @
,
@ A
_urlEncoder
 
.
 
Encode
 "
(
" #
email
# (
)
( )
,
) *
unformattedKey
 
)
 
;
  
}
 	
}
 
} R
ŁE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\Manage\ExternalLogins.cshtml.cs
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
userId	>>{ 
}
>> 
'.
>> 
"
>> 
)
>> 
;
>> 
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
	GetUserId	MMz 
(
MM 
User
MM 
)
MM 
)
MM 
;
MM 
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
user	\\ 
.
\\ 
Id
\\ 
}
\\ 
'.
\\ 
"
\\ 
)
\\ 
;
\\ 
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
Id	bb~ 
}
bb 
'.
bb 
"
bb 
)
bb 
;
bb 
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
}ll 0
ŞE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\Manage\GenerateRecoveryCodes.cshtml.cs
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
'' because they do not have 2FA enabled.	++o 
"
++ 
)
++ 
;
++ 
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
"' as they do not have 2FA enabled.	==o 
"
== 
)
== 
;
== 
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
}HH ę`
E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\Manage\Index.cshtml.cs
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
)	^^ 
;
^^ 
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
userId	ii| 
}
ii 
'.
ii 
"
ii 
)
ii 
;
ii 
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
 
userId
 
=
 
await
 
_userManager
 +
.
+ ,
GetUserIdAsync
, :
(
: ;
user
; ?
)
? @
;
@ A
var
 
email
 
=
 
await
 
_userManager
 *
.
* +
GetEmailAsync
+ 8
(
8 9
user
9 =
)
= >
;
> ?
var
 
code
 
=
 
await
 
_userManager
 )
.
) *1
#GenerateEmailConfirmationTokenAsync
* M
(
M N
user
N R
)
R S
;
S T
var
 
callbackUrl
 
=
 
Url
 !
.
! "
Page
" &
(
& '
$str
 '
,
' (
pageHandler
 
:
 
null
 !
,
! "
values
 
:
 
new
 
{
 
userId
 $
=
% &
userId
' -
,
- .
code
/ 3
=
4 5
code
6 :
}
; <
,
< =
protocol
 
:
 
Request
 !
.
! "
Scheme
" (
)
( )
;
) *
await
 
_emailSender
 
.
 
SendEmailAsync
 -
(
- .
email
 
,
 
$str
 $
,
$ %
$"
 6
(Please confirm your account by <a href='
 :
{
: ;
HtmlEncoder
; F
.
F G
Default
G N
.
N O
Encode
O U
(
U V
callbackUrl
V a
)
a b
}
b c"
'>clicking here</a>.
c w
"
w x
)
x y
;
y z
StatusMessage
 
=
 
$str
 O
;
O P
return
 
RedirectToPage
 !
(
! "
)
" #
;
# $
}
 	
}
 
} 
E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\Manage\ManageNavPages.cs
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
TwoFactorAuthentication	s 
)
 
;
 
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
}## 
ĄE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\Manage\PersonalData.cshtml.cs
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
} $
§E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\Manage\ResetAuthenticator.cshtml.cs
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
$str	44 
;
44 
return66 
RedirectToPage66 !
(66! "
$str66" 9
)669 :
;66: ;
}77 	
}88 
}99 Ô6
 E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\Manage\SetPassword.cshtml.cs
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
)	 
]
 
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
}YY ˇ*
ŹE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\Manage\TwoFactorAuthentication.cshtml.cs
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
$str	== 
;
== 
return>> 
RedirectToPage>> !
(>>! "
)>>" #
;>># $
}?? 	
}@@ 
}AA ÁI
E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\Register.cshtml.cs
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
)	.. 
]
.. 
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
}pp Ü,
E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\ResetPassword.cshtml.cs
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
)	 
]
 
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
}UU Č
§E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\ResetPasswordConfirmation.cshtml.cs
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
} ź
E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Error.cshtml.cs
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
} O
E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Controllers\CategoriesController.cs
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
 

FirstAsync
 
(
 
m
 
=>
  
m
! "
.
" #

CategoryId
# -
==
. 0
id
1 3
)
3 4
;
4 5
if
 
(
 
null
 
==
 
category
  
)
  !
{
 
return
 
NotFound
 
(
  
)
  !
;
! "
}
 
return
 
View
 
(
 
category
  
)
  !
;
! "
}
 	
[
 	
HttpPost
	 
,
 

ActionName
 
(
 
$str
 &
)
& '
]
' (
[
 	&
ValidateAntiForgeryToken
	 !
]
! "
public
 
async
 
Task
 
<
 
IActionResult
 '
>
' (
DeleteConfirmed
) 8
(
8 9
string
9 ?
id
@ B
)
B C
{
 	
var
 
category
 
=
 
await
  
_context
! )
.
) *
Category
* 2
.
2 3
	FindAsync
3 <
(
< =
id
= ?
)
? @
;
@ A
_context
 
.
 
Category
 
.
 
Remove
 $
(
$ %
category
% -
)
- .
;
. /
await
 
_context
 
.
 
SaveChangesAsync
 +
(
+ ,
)
, -
;
- .
return
 
RedirectToAction
 #
(
# $
nameof
$ *
(
* +
Index
+ 0
)
0 1
)
1 2
;
2 3
}
 	
private
 
bool
 
CategoryExists
 #
(
# $
string
$ *
id
+ -
)
- .
{
 	
return
 
_context
 
.
 
Category
 $
.
$ %
Any
% (
(
( )
e
) *
=>
+ -
e
. /
.
/ 0

CategoryId
0 :
==
; =
id
> @
)
@ A
;
A B
}
 	
}
 
} ü
E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Controllers\HomeController.cs
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
} ­Á
E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Controllers\OrdersController.cs
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
ProductIdFkNavigation	!!y 
)
!! 
.
!! 
Where
!! 
(
!! 
z
!! 
=>
!! 
z
!! 
.
!! 
HasBeenPlaced
!! Ş
==
!!Ť ­
$num
!!Ž Ż
&&
!!° ˛
z
!!ł ´
.
!!´ ľ
HasBeenConfirmed
!!ľ Ĺ
.
!!Ĺ Ć
Contains
!!Ć Î
(
!!Î Ď
$str
!!Ď Ň
)
!!Ň Ó
)
!!Ó Ô
.
!!Ô Ő
OrderBy
!!Ő Ü
(
!!Ü Ý
s
!!Ý Ţ
=>
!!ß á
s
!!â ă
.
!!ă ä
HasBeenConfirmed
!!ä ô
)
!!ô ő
;
!!ő ö
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
ProductIdFkNavigation	((y 
)
(( 
.
(( 
Where
(( 
(
(( 
y
(( 
=>
(( 
y
(( 
.
(( 
ClientId
(( Ľ
==
((Ś ¨
currentClient
((Š ś
)
((ś ˇ
.
((ˇ ¸
Where
((¸ ˝
(
((˝ ž
z
((ž ż
=>
((Ŕ Â
z
((Ă Ä
.
((Ä Ĺ
HasBeenPlaced
((Ĺ Ň
==
((Ó Ő
$num
((Ö ×
)
((× Ř
.
((Ř Ů
OrderBy
((Ů ŕ
(
((ŕ á
s
((á â
=>
((ă ĺ
s
((ć ç
.
((ç č
HasBeenConfirmed
((č ř
)
((ř ů
;
((ů ú
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
ProductIdFkNavigation	55y 
)
55 
.
55 
Where
55 
(
55 
z
55 
=>
55 
z
55 
.
55 
HasBeenPlaced
55 Ş
==
55Ť ­
$num
55Ž Ż
)
55Ż °
;
55° ą
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
ProductIdFkNavigation	<<y 
)
<< 
.
<< 
Where
<< 
(
<< 
y
<< 
=>
<< 
y
<< 
.
<< 
ClientId
<< Ľ
==
<<Ś ¨
currentClient
<<Š ś
)
<<ś ˇ
.
<<ˇ ¸
Where
<<¸ ˝
(
<<˝ ž
z
<<ž ż
=>
<<Ŕ Â
z
<<Ă Ä
.
<<Ä Ĺ
HasBeenPlaced
<<Ĺ Ň
==
<<Ó Ő
$num
<<Ö ×
)
<<× Ř
;
<<Ř Ů
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
 	
HttpPost
	 
]
 
[
 	&
ValidateAntiForgeryToken
	 !
]
! "
public
 
async
 
Task
 
<
 
IActionResult
 '
>
' (
Edit
) -
(
- .
string
. 4
id
5 7
,
7 8
[
9 :
Bind
: >
(
> ?
$str
? _
)
_ `
]
` a
Order
b g
order
h m
)
m n
{
 	
if
 
(
 
id
 
!=
 
order
 
.
 
OrderId
 #
)
# $
{
 
return
 
NotFound
 
(
  
)
  !
;
! "
}
 
if
 
(
 

ModelState
 
.
 
IsValid
 "
)
" #
{
 
try
 
{
 
_context
 
.
 
Update
 #
(
# $
order
$ )
)
) *
;
* +
await
 
_context
 "
.
" #
SaveChangesAsync
# 3
(
3 4
)
4 5
;
5 6
}
 
catch
 
(
 *
DbUpdateConcurrencyException
 3
)
3 4
{
 
if
 
(
 
!
 
OrderExists
 $
(
$ %
order
% *
.
* +
OrderId
+ 2
)
2 3
)
3 4
{
 
return
 
NotFound
 '
(
' (
)
( )
;
) *
}
 
else
 
{
 
throw
 
;
 
}
 
}
 
return
 
RedirectToAction
 '
(
' (
nameof
( .
(
. /
Index
/ 4
)
4 5
)
5 6
;
6 7
}
 
ViewData
   
[
   
$str
   
]
    
=
  ! "
new
  # &

SelectList
  ' 1
(
  1 2
_context
  2 :
.
  : ;
User
  ; ?
,
  ? @
$str
  A E
,
  E F
$str
  G K
,
  K L
order
  M R
.
  R S
ClientId
  S [
)
  [ \
;
  \ ]
return
ĄĄ 
View
ĄĄ 
(
ĄĄ 
order
ĄĄ 
)
ĄĄ 
;
ĄĄ 
}
˘˘ 	
public
ĽĽ 
async
ĽĽ 
Task
ĽĽ 
<
ĽĽ 
IActionResult
ĽĽ '
>
ĽĽ' (
Delete
ĽĽ) /
(
ĽĽ/ 0
string
ĽĽ0 6
id
ĽĽ7 9
)
ĽĽ9 :
{
ŚŚ 	
if
§§ 
(
§§ 
id
§§ 
==
§§ 
null
§§ 
)
§§ 
{
¨¨ 
return
ŠŠ 
NotFound
ŠŠ 
(
ŠŠ  
)
ŠŠ  !
;
ŠŠ! "
}
ŞŞ 
var
ŹŹ 
order
ŹŹ 
=
ŹŹ 
await
ŹŹ 
_context
ŹŹ &
.
ŹŹ& '
Order
ŹŹ' ,
.
­­ 
Include
­­ 
(
­­ 
o
­­ 
=>
­­ 
o
­­ 
.
­­  
Client
­­  &
)
­­& '
.
ŽŽ 

FirstAsync
ŽŽ 
(
ŽŽ 
m
ŽŽ 
=>
ŽŽ  
m
ŽŽ! "
.
ŽŽ" #
OrderId
ŽŽ# *
==
ŽŽ+ -
id
ŽŽ. 0
)
ŽŽ0 1
;
ŽŽ1 2
if
ŻŻ 
(
ŻŻ 
order
ŻŻ 
==
ŻŻ 
null
ŻŻ 
)
ŻŻ 
{
°° 
return
ąą 
NotFound
ąą 
(
ąą  
)
ąą  !
;
ąą! "
}
˛˛ 
return
´´ 
View
´´ 
(
´´ 
order
´´ 
)
´´ 
;
´´ 
}
ľľ 	
[
¸¸ 	
HttpPost
¸¸	 
,
¸¸ 

ActionName
¸¸ 
(
¸¸ 
$str
¸¸ &
)
¸¸& '
]
¸¸' (
[
šš 	&
ValidateAntiForgeryToken
šš	 !
]
šš! "
public
şş 
async
şş 
Task
şş 
<
şş 
IActionResult
şş '
>
şş' (
DeleteConfirmed
şş) 8
(
şş8 9
string
şş9 ?
id
şş@ B
)
şşB C
{
ťť 	
var
źź 
order
źź 
=
źź 
await
źź 
_context
źź &
.
źź& '
Order
źź' ,
.
źź, -
	FindAsync
źź- 6
(
źź6 7
id
źź7 9
)
źź9 :
;
źź: ;
order
˝˝ 
.
˝˝ 
HasBeenConfirmed
˝˝ "
=
˝˝# $
$str
˝˝% (
;
˝˝( )
order
žž 
.
žž 
HasBeenPlaced
žž 
=
žž  !
$num
žž" #
;
žž# $
await
żż 
_context
żż 
.
żż 
SaveChangesAsync
żż +
(
żż+ ,
)
żż, -
;
żż- .
return
ŔŔ 
RedirectToAction
ŔŔ #
(
ŔŔ# $
nameof
ŔŔ$ *
(
ŔŔ* +
IndexBasket
ŔŔ+ 6
)
ŔŔ6 7
)
ŔŔ7 8
;
ŔŔ8 9
}
ÁÁ 	
private
ĂĂ 
bool
ĂĂ 
OrderExists
ĂĂ  
(
ĂĂ  !
string
ĂĂ! '
id
ĂĂ( *
)
ĂĂ* +
{
ÄÄ 	
return
ĹĹ 
_context
ĹĹ 
.
ĹĹ 
Order
ĹĹ !
.
ĹĹ! "
Any
ĹĹ" %
(
ĹĹ% &
e
ĹĹ& '
=>
ĹĹ( *
e
ĹĹ+ ,
.
ĹĹ, -
OrderId
ĹĹ- 4
==
ĹĹ5 7
id
ĹĹ8 :
)
ĹĹ: ;
;
ĹĹ; <
}
ĆĆ 	
[
ČČ 	

ActionName
ČČ	 
(
ČČ 
$str
ČČ "
)
ČČ" #
]
ČČ# $
public
ÉÉ 
async
ÉÉ 
Task
ÉÉ 
<
ÉÉ 
IActionResult
ÉÉ '
>
ÉÉ' (
ConfirmOrder
ÉÉ) 5
(
ÉÉ5 6
string
ÉÉ6 <
id
ÉÉ= ?
)
ÉÉ? @
{
ĘĘ 	
var
ËË 
order
ËË 
=
ËË 
await
ËË 
_context
ËË &
.
ËË& '
Order
ËË' ,
.
ËË, -
	FindAsync
ËË- 6
(
ËË6 7
id
ËË7 9
)
ËË9 :
;
ËË: ;
order
ĚĚ 
.
ĚĚ 
HasBeenConfirmed
ĚĚ "
=
ĚĚ# $
$str
ĚĚ% (
;
ĚĚ( )
_context
ÍÍ 
.
ÍÍ 
Update
ÍÍ 
(
ÍÍ 
order
ÍÍ !
)
ÍÍ! "
;
ÍÍ" #
await
ÎÎ 
_context
ÎÎ 
.
ÎÎ 
SaveChangesAsync
ÎÎ +
(
ÎÎ+ ,
)
ÎÎ, -
;
ÎÎ- .
return
ĎĎ 
RedirectToAction
ĎĎ #
(
ĎĎ# $
nameof
ĎĎ$ *
(
ĎĎ* +
Index
ĎĎ+ 0
)
ĎĎ0 1
)
ĎĎ1 2
;
ĎĎ2 3
}
ĐĐ 	
[
ŇŇ 	

ActionName
ŇŇ	 
(
ŇŇ 
$str
ŇŇ  
)
ŇŇ  !
]
ŇŇ! "
public
ÓÓ 
async
ÓÓ 
Task
ÓÓ 
<
ÓÓ 
IActionResult
ÓÓ '
>
ÓÓ' (

PlaceOrder
ÓÓ) 3
(
ÓÓ3 4
string
ÓÓ4 :
id
ÓÓ; =
)
ÓÓ= >
{
ÔÔ 	
var
ŐŐ 
order
ŐŐ 
=
ŐŐ 
await
ŐŐ 
_context
ŐŐ &
.
ŐŐ& '
Order
ŐŐ' ,
.
ŐŐ, -
	FindAsync
ŐŐ- 6
(
ŐŐ6 7
id
ŐŐ7 9
)
ŐŐ9 :
;
ŐŐ: ;
order
ÖÖ 
.
ÖÖ 
HasBeenPlaced
ÖÖ 
=
ÖÖ  !
$num
ÖÖ" #
;
ÖÖ# $
_context
×× 
.
×× 
Update
×× 
(
×× 
order
×× !
)
××! "
;
××" #
await
ŘŘ 
_context
ŘŘ 
.
ŘŘ 
SaveChangesAsync
ŘŘ +
(
ŘŘ+ ,
)
ŘŘ, -
;
ŘŘ- .
return
ŮŮ 
RedirectToAction
ŮŮ #
(
ŮŮ# $
nameof
ŮŮ$ *
(
ŮŮ* +
IndexBasket
ŮŮ+ 6
)
ŮŮ6 7
)
ŮŮ7 8
;
ŮŮ8 9
}
ÚÚ 	
[
ÜÜ 	

ActionName
ÜÜ	 
(
ÜÜ 
$str
ÜÜ $
)
ÜÜ$ %
]
ÜÜ% &
public
ÝÝ 
async
ÝÝ 
Task
ÝÝ 
<
ÝÝ 
IActionResult
ÝÝ '
>
ÝÝ' (
DecrementOrder
ÝÝ) 7
(
ÝÝ7 8
string
ÝÝ8 >
id
ÝÝ? A
)
ÝÝA B
{
ŢŢ 	
var
ßß 
order
ßß 
=
ßß 
await
ßß 
_context
ßß &
.
ßß& '
Order
ßß' ,
.
ßß, -
	FindAsync
ßß- 6
(
ßß6 7
id
ßß7 9
)
ßß9 :
;
ßß: ;
if
ŕŕ 
(
ŕŕ 
$num
ŕŕ 
<
ŕŕ 
order
ŕŕ 
.
ŕŕ 
Quantity
ŕŕ "
)
ŕŕ" #
{
áá 
order
ââ 
.
ââ 
Quantity
ââ 
--
ââ  
;
ââ  !
_context
ăă 
.
ăă 
Update
ăă 
(
ăă  
order
ăă  %
)
ăă% &
;
ăă& '
await
ää 
_context
ää 
.
ää 
SaveChangesAsync
ää /
(
ää/ 0
)
ää0 1
;
ää1 2
}
ĺĺ 
return
ćć 
RedirectToAction
ćć #
(
ćć# $
nameof
ćć$ *
(
ćć* +
IndexBasket
ćć+ 6
)
ćć6 7
)
ćć7 8
;
ćć8 9
}
çç 	
[
éé 	

ActionName
éé	 
(
éé 
$str
éé $
)
éé$ %
]
éé% &
public
ęę 
async
ęę 
Task
ęę 
<
ęę 
IActionResult
ęę '
>
ęę' (
IncrementOrder
ęę) 7
(
ęę7 8
string
ęę8 >
id
ęę? A
)
ęęA B
{
ëë 	
var
ěě 
order
ěě 
=
ěě 
await
ěě 
_context
ěě &
.
ěě& '
Order
ěě' ,
.
ěě, -
	FindAsync
ěě- 6
(
ěě6 7
id
ěě7 9
)
ěě9 :
;
ěě: ;
order
íí 
.
íí 
Quantity
íí 
++
íí 
;
íí 
_context
îî 
.
îî 
Update
îî 
(
îî 
order
îî !
)
îî! "
;
îî" #
await
ďď 
_context
ďď 
.
ďď 
SaveChangesAsync
ďď +
(
ďď+ ,
)
ďď, -
;
ďď- .
return
đđ 
RedirectToAction
đđ #
(
đđ# $
nameof
đđ$ *
(
đđ* +
IndexBasket
đđ+ 6
)
đđ6 7
)
đđ7 8
;
đđ8 9
}
ńń 	
}
ňň 
}óó m
E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Controllers\ProductCategoriesController.cs
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
)	EE 
;
EE 
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
)	WW 
;
WW 
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
productCategory	aaz 
)
aa 
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
)	|| 
;
|| 
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
 
async
 
Task
 
<
 
IActionResult
 '
>
' (
Delete
) /
(
/ 0
string
0 6
id
7 9
)
9 :
{
 	
if
 
(
 
id
 
==
 
null
 
)
 
{
 
return
 
NotFound
 
(
  
)
  !
;
! "
}
 
var
 
productCategory
 
=
  !
await
" '
_context
( 0
.
0 1
ProductCategory
1 @
.
 
Include
 
(
 
p
 
=>
 
p
 
.
  
Category
  (
)
( )
.
 
Include
 
(
 
p
 
=>
 
p
 
.
  
Product
  '
)
' (
.
 

FirstAsync
 
(
 
m
 
=>
  
m
! "
.
" #
IdProductCategory
# 4
==
5 7
id
8 :
)
: ;
;
; <
if
 
(
 
productCategory
 
==
  "
null
# '
)
' (
{
 
return
 
NotFound
 
(
  
)
  !
;
! "
}
 
return
 
View
 
(
 
productCategory
 '
)
' (
;
( )
}
 	
[
 	
HttpPost
	 
,
 

ActionName
 
(
 
$str
 &
)
& '
]
' (
[
 	&
ValidateAntiForgeryToken
	 !
]
! "
public
 
async
 
Task
 
<
 
IActionResult
 '
>
' (
DeleteConfirmed
) 8
(
8 9
string
9 ?
id
@ B
)
B C
{
 	
var
 
productCategory
 
=
  !
await
" '
_context
( 0
.
0 1
ProductCategory
1 @
.
@ A
	FindAsync
A J
(
J K
id
K M
)
M N
;
N O
_context
 
.
 
ProductCategory
 $
.
$ %
Remove
% +
(
+ ,
productCategory
, ;
)
; <
;
< =
await
 
_context
 
.
 
SaveChangesAsync
 +
(
+ ,
)
, -
;
- .
return
 
RedirectToAction
 #
(
# $
nameof
$ *
(
* +
Index
+ 0
)
0 1
)
1 2
;
2 3
}
 	
private
   
bool
   #
ProductCategoryExists
   *
(
  * +
string
  + 1
id
  2 4
)
  4 5
{
ĄĄ 	
return
˘˘ 
_context
˘˘ 
.
˘˘ 
ProductCategory
˘˘ +
.
˘˘+ ,
Any
˘˘, /
(
˘˘/ 0
e
˘˘0 1
=>
˘˘2 4
e
˘˘5 6
.
˘˘6 7
IdProductCategory
˘˘7 H
==
˘˘I K
id
˘˘L N
)
˘˘N O
;
˘˘O P
}
ŁŁ 	
}
¤¤ 
}ĽĽ Đj
E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Controllers\ProductOrdersController.cs
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
ProductIdFkNavigation	l 
)
 
;
 
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
productOrder	__u 
)
__ 
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
 
async
 
Task
 
<
 
IActionResult
 '
>
' (
Delete
) /
(
/ 0
string
0 6
id
7 9
)
9 :
{
 	
if
 
(
 
id
 
==
 
null
 
)
 
{
 
return
 
NotFound
 
(
  
)
  !
;
! "
}
 
var
 
productOrder
 
=
 
await
 $
_context
% -
.
- .
ProductOrder
. :
.
 
Include
 
(
 
p
 
=>
 
p
 
.
  !
OrderIdFkNavigation
  3
)
3 4
.
 
Include
 
(
 
p
 
=>
 
p
 
.
  #
ProductIdFkNavigation
  5
)
5 6
.
 

FirstAsync
 
(
 
m
 
=>
  
m
! "
.
" #
IdProductOrder
# 1
==
2 4
id
5 7
)
7 8
;
8 9
if
 
(
 
productOrder
 
==
 
null
  $
)
$ %
{
 
return
 
NotFound
 
(
  
)
  !
;
! "
}
 
return
 
View
 
(
 
productOrder
 $
)
$ %
;
% &
}
 	
[
 	
HttpPost
	 
,
 

ActionName
 
(
 
$str
 &
)
& '
]
' (
[
 	&
ValidateAntiForgeryToken
	 !
]
! "
public
 
async
 
Task
 
<
 
IActionResult
 '
>
' (
DeleteConfirmed
) 8
(
8 9
string
9 ?
id
@ B
)
B C
{
 	
var
 
productOrder
 
=
 
await
 $
_context
% -
.
- .
ProductOrder
. :
.
: ;
	FindAsync
; D
(
D E
id
E G
)
G H
;
H I
_context
 
.
 
ProductOrder
 !
.
! "
Remove
" (
(
( )
productOrder
) 5
)
5 6
;
6 7
await
 
_context
 
.
 
SaveChangesAsync
 +
(
+ ,
)
, -
;
- .
return
 
RedirectToAction
 #
(
# $
nameof
$ *
(
* +
Index
+ 0
)
0 1
)
1 2
;
2 3
}
 	
private
 
bool
  
ProductOrderExists
 '
(
' (
string
( .
id
/ 1
)
1 2
{
 	
return
   
_context
   
.
   
ProductOrder
   (
.
  ( )
Any
  ) ,
(
  , -
e
  - .
=>
  / 1
e
  2 3
.
  3 4
IdProductOrder
  4 B
==
  C E
id
  F H
)
  H I
;
  I J
}
ĄĄ 	
}
˘˘ 
}ŁŁ žč
E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Controllers\ProductsController.cs
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
 
.
 
ProductName
 
)
 
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
select	44z 
m
44 
;
44 
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
decimal	GG} 
price2
GG 
)
GG 
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
.	^^ 
Sales
^^ 
>
^^ 
$num
^^ 
)
^^ 
.
^^ 
OrderBy
^^ 
(
^^ 
x
^^ 
=>
^^ 
x
^^ 
.
^^ 
ProductName
^^ Ľ
)
^^Ľ Ś
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
select	rrz 
m
rr 
;
rr 
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
 
List
 
<
 
Product
 
>
 #
filterProductsByStock
 3
(
3 4

IQueryable
4 >
<
> ?
Product
? F
>
F G
filteredProducts
H X
,
X Y

IQueryable
Z d
<
d e

StockEntry
e o
>
o p
stocks
q w
)
w x
{
 	
List
 
<
 
Product
 
>
 
prod
 
=
  
new
! $
List
% )
<
) *
Product
* 1
>
1 2
(
2 3
)
3 4
;
4 5
foreach
 
(
 
var
 
p
 
in
 
filteredProducts
 .
)
. /
{
 
foreach
 
(
 
var
 
stock
 "
in
# %
stocks
& ,
)
, -
{
 
if
 
(
 
stock
 
.
 
	ProductId
 '
==
( *
p
+ ,
.
, -
	ProductId
- 6
&&
7 9
stock
: ?
.
? @
RemainingStock
@ N
>
O P
$num
Q R
)
R S
{
 
prod
 
.
 
Add
  
(
  !
p
! "
)
" #
;
# $
}
 
}
 
}
 
return
 
prod
 
;
 
}
 	
public
 
async
 
Task
 
<
 
IActionResult
 '
>
' (
Details
) 0
(
0 1
string
1 7
id
8 :
)
: ;
{
 	
if
 
(
 
id
 
==
 
null
 
)
 
{
 
return
 
NotFound
 
(
  
)
  !
;
! "
}
 
var
 
product
 
=
 
await
 
_context
  (
.
( )
Product
) 0
.
 !
FirstOrDefaultAsync
 $
(
$ %
m
% &
=>
' )
m
* +
.
+ ,
	ProductId
, 5
==
6 8
id
9 ;
)
; <
;
< =
if
 
(
 
product
 
==
 
null
 
)
  
{
 
return
 
NotFound
 
(
  
)
  !
;
! "
}
 
return
   
View
   
(
   
product
   
)
    
;
    !
}
ĄĄ 	
public
¤¤ 
IActionResult
¤¤ 
Create
¤¤ #
(
¤¤# $
)
¤¤$ %
{
ĽĽ 	
return
ŚŚ 
View
ŚŚ 
(
ŚŚ 
)
ŚŚ 
;
ŚŚ 
}
§§ 	
[
ŹŹ 	
HttpPost
ŹŹ	 
]
ŹŹ 
[
­­ 	&
ValidateAntiForgeryToken
­­	 !
]
­­! "
public
ŽŽ 
async
ŽŽ 
Task
ŽŽ 
<
ŽŽ 
IActionResult
ŽŽ '
>
ŽŽ' (
Create
ŽŽ) /
(
ŽŽ/ 0
[
ŽŽ0 1
Bind
ŽŽ1 5
(
ŽŽ5 6
$str
ŽŽ6 }
)
ŽŽ} ~
]
ŽŽ~ 
ProductŽŽ 
productŽŽ 
)ŽŽ 
{
ŻŻ 	
if
°° 
(
°° 

ModelState
°° 
.
°° 
IsValid
°° "
)
°°" #
{
ąą 
product
˛˛ 
.
˛˛ 
	ProductId
˛˛ !
=
˛˛" #
Guid
˛˛$ (
.
˛˛( )
NewGuid
˛˛) 0
(
˛˛0 1
)
˛˛1 2
.
˛˛2 3
ToString
˛˛3 ;
(
˛˛; <
)
˛˛< =
;
˛˛= >
_context
łł 
.
łł 
Add
łł 
(
łł 
product
łł $
)
łł$ %
;
łł% &
await
´´ 
_context
´´ 
.
´´ 
SaveChangesAsync
´´ /
(
´´/ 0
)
´´0 1
;
´´1 2

StockEntry
ľľ 
stock
ľľ  
=
ľľ! "
new
ľľ# &

StockEntry
ľľ' 1
(
ľľ1 2
)
ľľ2 3
;
ľľ3 4
stock
śś 
.
śś 
RemainingStock
śś $
=
śś% &
$num
śś' (
;
śś( )
stock
ˇˇ 
.
ˇˇ 
	ProductId
ˇˇ 
=
ˇˇ  !
product
ˇˇ" )
.
ˇˇ) *
	ProductId
ˇˇ* 3
;
ˇˇ3 4
stock
¸¸ 
.
¸¸ 
StockId
¸¸ 
=
¸¸ 
Guid
¸¸  $
.
¸¸$ %
NewGuid
¸¸% ,
(
¸¸, -
)
¸¸- .
.
¸¸. /
ToString
¸¸/ 7
(
¸¸7 8
)
¸¸8 9
;
¸¸9 :
_context
šš 
.
šš 
Add
šš 
(
šš 
stock
šš "
)
šš" #
;
šš# $
await
şş 
_context
şş 
.
şş 
SaveChangesAsync
şş /
(
şş/ 0
)
şş0 1
;
şş1 2
return
ťť 
RedirectToAction
ťť '
(
ťť' (
nameof
ťť( .
(
ťť. /
Index
ťť/ 4
)
ťť4 5
)
ťť5 6
;
ťť6 7
}
źź 
return
˝˝ 
View
˝˝ 
(
˝˝ 
product
˝˝ 
)
˝˝  
;
˝˝  !
}
žž 	
public
ÁÁ 
async
ÁÁ 
Task
ÁÁ 
<
ÁÁ 
IActionResult
ÁÁ '
>
ÁÁ' (
Edit
ÁÁ) -
(
ÁÁ- .
string
ÁÁ. 4
id
ÁÁ5 7
)
ÁÁ7 8
{
ÂÂ 	
if
ĂĂ 
(
ĂĂ 
id
ĂĂ 
==
ĂĂ 
null
ĂĂ 
)
ĂĂ 
{
ÄÄ 
return
ĹĹ 
NotFound
ĹĹ 
(
ĹĹ  
)
ĹĹ  !
;
ĹĹ! "
}
ĆĆ 
var
ČČ 
product
ČČ 
=
ČČ 
await
ČČ 
_context
ČČ  (
.
ČČ( )
Product
ČČ) 0
.
ČČ0 1
	FindAsync
ČČ1 :
(
ČČ: ;
id
ČČ; =
)
ČČ= >
;
ČČ> ?
if
ÉÉ 
(
ÉÉ 
product
ÉÉ 
==
ÉÉ 
null
ÉÉ 
)
ÉÉ  
{
ĘĘ 
return
ËË 
NotFound
ËË 
(
ËË  
)
ËË  !
;
ËË! "
}
ĚĚ 
return
ÍÍ 
View
ÍÍ 
(
ÍÍ 
product
ÍÍ 
)
ÍÍ  
;
ÍÍ  !
}
ÎÎ 	
[
ÓÓ 	
HttpPost
ÓÓ	 
]
ÓÓ 
[
ÔÔ 	&
ValidateAntiForgeryToken
ÔÔ	 !
]
ÔÔ! "
public
ŐŐ 
async
ŐŐ 
Task
ŐŐ 
<
ŐŐ 
IActionResult
ŐŐ '
>
ŐŐ' (
Edit
ŐŐ) -
(
ŐŐ- .
string
ŐŐ. 4
id
ŐŐ5 7
,
ŐŐ7 8
[
ŐŐ9 :
Bind
ŐŐ: >
(
ŐŐ> ?
$strŐŐ? 
)ŐŐ 
]ŐŐ 
ProductŐŐ  
productŐŐĄ ¨
)ŐŐ¨ Š
{
ÖÖ 	
if
×× 
(
×× 
id
×× 
!=
×× 
product
×× 
.
×× 
	ProductId
×× '
)
××' (
{
ŘŘ 
return
ŮŮ 
NotFound
ŮŮ 
(
ŮŮ  
)
ŮŮ  !
;
ŮŮ! "
}
ÚÚ 
product
ŰŰ 
.
ŰŰ 
Nprice
ŰŰ 
=
ŰŰ 
(
ŰŰ 
product
ŰŰ %
.
ŰŰ% &
Price
ŰŰ& +
-
ŰŰ, -
(
ŰŰ. /
$num
ŰŰ/ 1
*
ŰŰ2 3
product
ŰŰ4 ;
.
ŰŰ; <
Price
ŰŰ< A
/
ŰŰB C
$num
ŰŰD G
)
ŰŰH I
)
ŰŰI J
;
ŰŰJ K
if
ÜÜ 
(
ÜÜ 

ModelState
ÜÜ 
.
ÜÜ 
IsValid
ÜÜ "
)
ÜÜ" #
{
ÝÝ 
try
ŢŢ 
{
ßß 
_context
ŕŕ 
.
ŕŕ 
Update
ŕŕ #
(
ŕŕ# $
product
ŕŕ$ +
)
ŕŕ+ ,
;
ŕŕ, -
await
áá 
_context
áá "
.
áá" #
SaveChangesAsync
áá# 3
(
áá3 4
)
áá4 5
;
áá5 6
}
ââ 
catch
ăă 
(
ăă *
DbUpdateConcurrencyException
ăă 3
)
ăă3 4
{
ää 
if
ĺĺ 
(
ĺĺ 
!
ĺĺ 
ProductExists
ĺĺ &
(
ĺĺ& '
product
ĺĺ' .
.
ĺĺ. /
	ProductId
ĺĺ/ 8
)
ĺĺ8 9
)
ĺĺ9 :
{
ćć 
return
çç 
NotFound
çç '
(
çç' (
)
çç( )
;
çç) *
}
čč 
else
éé 
{
ęę 
throw
ëë 
;
ëë 
}
ěě 
}
íí 
return
îî 
RedirectToAction
îî '
(
îî' (
nameof
îî( .
(
îî. /
Index
îî/ 4
)
îî4 5
)
îî5 6
;
îî6 7
}
ďď 
return
đđ 
View
đđ 
(
đđ 
product
đđ 
)
đđ  
;
đđ  !
}
ńń 	
public
ôô 
async
ôô 
Task
ôô 
<
ôô 
IActionResult
ôô '
>
ôô' (
Delete
ôô) /
(
ôô/ 0
string
ôô0 6
id
ôô7 9
)
ôô9 :
{
őő 	
if
öö 
(
öö 
null
öö 
==
öö 
id
öö 
)
öö 
{
÷÷ 
return
řř 
NotFound
řř 
(
řř  
)
řř  !
;
řř! "
}
ůů 
var
űű 
product
űű 
=
űű 
await
űű 
_context
űű  (
.
űű( )
Product
űű) 0
.
üü !
FirstOrDefaultAsync
üü $
(
üü$ %
m
üü% &
=>
üü' )
m
üü* +
.
üü+ ,
	ProductId
üü, 5
==
üü6 8
id
üü9 ;
)
üü; <
;
üü< =
if
ýý 
(
ýý 
null
ýý 
==
ýý 
product
ýý 
)
ýý  
{
ţţ 
return
˙˙ 
NotFound
˙˙ 
(
˙˙  
)
˙˙  !
;
˙˙! "
}
 
return
 
View
 
(
 
product
 
)
  
;
  !
}
 	
[
 	
HttpPost
	 
,
 

ActionName
 
(
 
$str
 &
)
& '
]
' (
[
 	&
ValidateAntiForgeryToken
	 !
]
! "
public
 
async
 
Task
 
<
 
IActionResult
 '
>
' (
DeleteConfirmed
) 8
(
8 9
string
9 ?
id
@ B
)
B C
{
 	
var
 
product
 
=
 
await
 
_context
  (
.
( )
Product
) 0
.
0 1
	FindAsync
1 :
(
: ;
id
; =
)
= >
;
> ?
_context
 
.
 
Product
 
.
 
Remove
 #
(
# $
product
$ +
)
+ ,
;
, -
await
 
_context
 
.
 
SaveChangesAsync
 +
(
+ ,
)
, -
;
- .
return
 
RedirectToAction
 #
(
# $
nameof
$ *
(
* +
Index
+ 0
)
0 1
)
1 2
;
2 3
}
 	
private
 
bool
 
ProductExists
 "
(
" #
string
# )
id
* ,
)
, -
{
 	
return
 
_context
 
.
 
Product
 #
.
# $
Any
$ '
(
' (
e
( )
=>
* ,
e
- .
.
. /
	ProductId
/ 8
==
9 ;
id
< >
)
> ?
;
? @
}
 	
[
 	
	Authorize
	 
]
 
[
 	
HttpGet
	 
,
 

ActionName
 
(
 
$str
 (
)
( )
]
) *
public
 
async
 
Task
 
<
 
IActionResult
 '
>
' (
	AddToCart
) 2
(
2 3
string
3 9
id
: <
)
< =
{
 	
var
 
order
 
=
 
new
 
Order
 !
(
! "
)
" #
;
# $
order
 
.
 
OrderId
 
=
 
Guid
  
.
  !
NewGuid
! (
(
( )
)
) *
.
* +
ToString
+ 3
(
3 4
)
4 5
;
5 6
order
 
.
 
HasBeenPlaced
 
=
  !
$num
" #
;
# $
order
 
.
 
HasBeenConfirmed
 "
=
# $
$str
% (
;
( )
order
 
.
 
ClientId
 
=
 "
_httpContextAccessor
 1
.
1 2
HttpContext
2 =
.
= >
User
> B
.
B C
	FindFirst
C L
(
L M

ClaimTypes
M W
.
W X
NameIdentifier
X f
)
f g
.
g h
Value
h m
;
m n
_context
 
.
 
Order
 
.
 
Add
 
(
 
order
 $
)
$ %
;
% &
var
   
stocks
   
=
   
_context
   !
.
  ! "

StockEntry
  " ,
.
  , -
Include
  - 4
(
  4 5
s
  5 6
=>
  7 9
s
  : ;
.
  ; <
Product
  < C
)
  C D
.
  D E
OrderBy
  E L
(
  L M
x
  M N
=>
  O Q
x
  R S
.
  S T
RemainingStock
  T b
)
  b c
;
  c d
foreach
ĄĄ 
(
ĄĄ 
var
ĄĄ 
stock
ĄĄ 
in
ĄĄ !
stocks
ĄĄ" (
)
ĄĄ( )
{
˘˘ 
if
ŁŁ 
(
ŁŁ 
stock
ŁŁ 
.
ŁŁ 
	ProductId
ŁŁ #
==
ŁŁ$ &
id
ŁŁ' )
)
ŁŁ) *
{
¤¤ 
stock
ĽĽ 
.
ĽĽ 
RemainingStock
ĽĽ (
--
ĽĽ( *
;
ĽĽ* +
_context
ŚŚ 
.
ŚŚ 
Update
ŚŚ #
(
ŚŚ# $
stock
ŚŚ$ )
)
ŚŚ) *
;
ŚŚ* +
break
§§ 
;
§§ 
}
¨¨ 
}
ŠŠ 
await
ŞŞ 
_context
ŞŞ 
.
ŞŞ 
SaveChangesAsync
ŞŞ +
(
ŞŞ+ ,
)
ŞŞ, -
;
ŞŞ- .
var
ŤŤ 
productorder
ŤŤ 
=
ŤŤ 
new
ŤŤ "
ProductOrder
ŤŤ# /
(
ŤŤ/ 0
)
ŤŤ0 1
;
ŤŤ1 2
productorder
ŹŹ 
.
ŹŹ 
IdProductOrder
ŹŹ '
=
ŹŹ( )
Guid
ŹŹ* .
.
ŹŹ. /
NewGuid
ŹŹ/ 6
(
ŹŹ6 7
)
ŹŹ7 8
.
ŹŹ8 9
ToString
ŹŹ9 A
(
ŹŹA B
)
ŹŹB C
;
ŹŹC D
productorder
­­ 
.
­­ 
	OrderIdFk
­­ "
=
­­# $
order
­­% *
.
­­* +
OrderId
­­+ 2
;
­­2 3
productorder
ŽŽ 
.
ŽŽ 
ProductIdFk
ŽŽ $
=
ŽŽ% &
id
ŽŽ' )
;
ŽŽ) *
_context
ŻŻ 
.
ŻŻ 
ProductOrder
ŻŻ !
.
ŻŻ! "
Add
ŻŻ" %
(
ŻŻ% &
productorder
ŻŻ& 2
)
ŻŻ2 3
;
ŻŻ3 4
await
°° 
_context
°° 
.
°° 
SaveChangesAsync
°° +
(
°°+ ,
)
°°, -
;
°°- .
return
ąą 
RedirectToAction
ąą #
(
ąą# $
nameof
ąą$ *
(
ąą* +
Index
ąą+ 0
)
ąą0 1
)
ąą1 2
;
ąą2 3
}
˛˛ 	
}
´´ 
}ľľ çH
E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Controllers\RolesController.cs
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
 
return
 
View
 
(
 
role
 
)
 
;
 
}
 	
[
 	
HttpPost
	 
,
 

ActionName
 
(
 
$str
 &
)
& '
]
' (
[
 	&
ValidateAntiForgeryToken
	 !
]
! "
public
 
async
 
Task
 
<
 
IActionResult
 '
>
' (
DeleteConfirmed
) 8
(
8 9
int
9 <
id
= ?
)
? @
{
 	
var
 
role
 
=
 
await
 
_context
 %
.
% &
Role
& *
.
* +
	FindAsync
+ 4
(
4 5
id
5 7
)
7 8
;
8 9
_context
 
.
 
Role
 
.
 
Remove
  
(
  !
role
! %
)
% &
;
& '
await
 
_context
 
.
 
SaveChangesAsync
 +
(
+ ,
)
, -
;
- .
return
 
RedirectToAction
 #
(
# $
nameof
$ *
(
* +
Index
+ 0
)
0 1
)
1 2
;
2 3
}
 	
private
 
bool
 

RoleExists
 
(
  
int
  #
id
$ &
)
& '
{
 	
return
 
_context
 
.
 
Role
  
.
  !
Any
! $
(
$ %
e
% &
=>
' )
e
* +
.
+ ,
RoleId
, 2
==
3 5
id
6 8
)
8 9
;
9 :
}
 	
}
 
} Ă^
E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Controllers\StockEntriesController.cs
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
 	
if
 
(
 
id
 
==
 
null
 
)
 
{
 
return
 
NotFound
 
(
  
)
  !
;
! "
}
 
var
 

stockEntry
 
=
 
await
 "
_context
# +
.
+ ,

StockEntry
, 6
.
 
Include
 
(
 
s
 
=>
 
s
 
.
  
Product
  '
)
' (
.
 !
FirstOrDefaultAsync
 $
(
$ %
m
% &
=>
' )
m
* +
.
+ ,
StockId
, 3
==
4 6
id
7 9
)
9 :
;
: ;
if
 
(
 

stockEntry
 
==
 
null
 "
)
" #
{
 
return
 
NotFound
 
(
  
)
  !
;
! "
}
 
return
 
View
 
(
 

stockEntry
 "
)
" #
;
# $
}
 	
[
 	
HttpPost
	 
,
 

ActionName
 
(
 
$str
 &
)
& '
]
' (
[
 	&
ValidateAntiForgeryToken
	 !
]
! "
public
 
async
 
Task
 
<
 
IActionResult
 '
>
' (
DeleteConfirmed
) 8
(
8 9
string
9 ?
id
@ B
)
B C
{
 	
var
 

stockEntry
 
=
 
await
 "
_context
# +
.
+ ,

StockEntry
, 6
.
6 7
	FindAsync
7 @
(
@ A
id
A C
)
C D
;
D E
_context
 
.
 

StockEntry
 
.
  
Remove
  &
(
& '

stockEntry
' 1
)
1 2
;
2 3
await
 
_context
 
.
 
SaveChangesAsync
 +
(
+ ,
)
, -
;
- .
return
 
RedirectToAction
 #
(
# $
nameof
$ *
(
* +
Index
+ 0
)
0 1
)
1 2
;
2 3
}
 	
private
 
bool
 
StockEntryExists
 %
(
% &
string
& ,
id
- /
)
/ 0
{
 	
return
 
_context
 
.
 

StockEntry
 &
.
& '
Any
' *
(
* +
e
+ ,
=>
- /
e
0 1
.
1 2
StockId
2 9
==
: <
id
= ?
)
? @
;
@ A
}
 	
}
ĄĄ 
}˘˘ šc
E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Controllers\UsersController.cs
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
 	
[
 	
	Authorize
	 
(
 
Roles
 
=
 
$str
 "
)
" #
]
# $
public
 
async
 
Task
 
<
 
IActionResult
 '
>
' (
Delete
) /
(
/ 0
string
0 6
id
7 9
)
9 :
{
 	
if
 
(
 
null
 
==
 
id
 
)
 
{
 
return
 
NotFound
 
(
  
)
  !
;
! "
}
 
var
 
user
 
=
 
await
 
_context
 %
.
% &
User
& *
.
 
Include
 
(
 
u
 
=>
 
u
 
.
  
Role
  $
)
$ %
.
 !
FirstOrDefaultAsync
 $
(
$ %
m
% &
=>
' )
m
* +
.
+ ,
Id
, .
==
/ 1
id
2 4
)
4 5
;
5 6
if
 
(
 
user
 
==
 
null
 
)
 
{
 
return
 
NotFound
 
(
  
)
  !
;
! "
}
 
return
 
View
 
(
 
user
 
)
 
;
 
}
 	
[
 	
	Authorize
	 
(
 
Roles
 
=
 
$str
 "
)
" #
]
# $
[
 	
HttpPost
	 
,
 

ActionName
 
(
 
$str
 &
)
& '
]
' (
[
 	&
ValidateAntiForgeryToken
	 !
]
! "
public
 
async
 
Task
 
<
 
IActionResult
 '
>
' (
DeleteConfirmed
) 8
(
8 9
string
9 ?
id
@ B
)
B C
{
 	
var
 
user
 
=
 
await
 
_context
 %
.
% &
User
& *
.
* +
	FindAsync
+ 4
(
4 5
id
5 7
)
7 8
;
8 9
_context
 
.
 
User
 
.
 
Remove
  
(
  !
user
! %
)
% &
;
& '
await
 
_context
 
.
 
SaveChangesAsync
 +
(
+ ,
)
, -
;
- .
return
 
RedirectToAction
 #
(
# $
nameof
$ *
(
* +
Index
+ 0
)
0 1
)
1 2
;
2 3
}
   	
private
˘˘ 
bool
˘˘ 

UserExists
˘˘ 
(
˘˘  
string
˘˘  &
id
˘˘' )
)
˘˘) *
{
ŁŁ 	
return
¤¤ 
_context
¤¤ 
.
¤¤ 
User
¤¤  
.
¤¤  !
Any
¤¤! $
(
¤¤$ %
e
¤¤% &
=>
¤¤' )
e
¤¤* +
.
¤¤+ ,
Id
¤¤, .
==
¤¤/ 1
id
¤¤2 4
)
¤¤4 5
;
¤¤5 6
}
ĽĽ 	
}
ŚŚ 
}§§ ¤
E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Migrations\20191109090716_addedIdentity.cs
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
 
)
 
;
 
migrationBuilder
 
.
 
CreateTable
 (
(
( )
name
 
:
 
$str
 (
,
( )
columns
 
:
 
table
 
=>
 !
new
" %
{
 
LoginProvider
 !
=
" #
table
$ )
.
) *
Column
* 0
<
0 1
string
1 7
>
7 8
(
8 9
nullable
9 A
:
A B
false
C H
)
H I
,
I J
ProviderKey
 
=
  !
table
" '
.
' (
Column
( .
<
. /
string
/ 5
>
5 6
(
6 7
nullable
7 ?
:
? @
false
A F
)
F G
,
G H!
ProviderDisplayName
 '
=
( )
table
* /
.
/ 0
Column
0 6
<
6 7
string
7 =
>
= >
(
> ?
nullable
? G
:
G H
true
I M
)
M N
,
N O
UserId
 
=
 
table
 "
.
" #
Column
# )
<
) *
string
* 0
>
0 1
(
1 2
nullable
2 :
:
: ;
false
< A
)
A B
}
 
,
 
constraints
 
:
 
table
 "
=>
# %
{
 
table
 
.
 

PrimaryKey
 $
(
$ %
$str
% :
,
: ;
x
< =
=>
> @
new
A D
{
E F
x
G H
.
H I
LoginProvider
I V
,
V W
x
X Y
.
Y Z
ProviderKey
Z e
}
f g
)
g h
;
h i
table
 
.
 

ForeignKey
 $
(
$ %
name
 
:
 
$str
 F
,
F G
column
 
:
 
x
  !
=>
" $
x
% &
.
& '
UserId
' -
,
- .
principalTable
 &
:
& '
$str
( 5
,
5 6
principalColumn
 '
:
' (
$str
) -
,
- .
onDelete
  
:
  !
ReferentialAction
" 3
.
3 4
Cascade
4 ;
)
; <
;
< =
}
 
)
 
;
 
migrationBuilder
 
.
 
CreateTable
 (
(
( )
name
 
:
 
$str
 '
,
' (
columns
 
:
 
table
 
=>
 !
new
" %
{
 
UserId
 
=
 
table
 "
.
" #
Column
# )
<
) *
string
* 0
>
0 1
(
1 2
nullable
2 :
:
: ;
false
< A
)
A B
,
B C
RoleId
 
=
 
table
 "
.
" #
Column
# )
<
) *
string
* 0
>
0 1
(
1 2
nullable
2 :
:
: ;
false
< A
)
A B
}
 
,
 
constraints
 
:
 
table
 "
=>
# %
{
 
table
 
.
 

PrimaryKey
 $
(
$ %
$str
% 9
,
9 :
x
; <
=>
= ?
new
@ C
{
D E
x
F G
.
G H
UserId
H N
,
N O
x
P Q
.
Q R
RoleId
R X
}
Y Z
)
Z [
;
[ \
table
   
.
   

ForeignKey
   $
(
  $ %
name
ĄĄ 
:
ĄĄ 
$str
ĄĄ E
,
ĄĄE F
column
˘˘ 
:
˘˘ 
x
˘˘  !
=>
˘˘" $
x
˘˘% &
.
˘˘& '
RoleId
˘˘' -
,
˘˘- .
principalTable
ŁŁ &
:
ŁŁ& '
$str
ŁŁ( 5
,
ŁŁ5 6
principalColumn
¤¤ '
:
¤¤' (
$str
¤¤) -
,
¤¤- .
onDelete
ĽĽ  
:
ĽĽ  !
ReferentialAction
ĽĽ" 3
.
ĽĽ3 4
Cascade
ĽĽ4 ;
)
ĽĽ; <
;
ĽĽ< =
table
ŚŚ 
.
ŚŚ 

ForeignKey
ŚŚ $
(
ŚŚ$ %
name
§§ 
:
§§ 
$str
§§ E
,
§§E F
column
¨¨ 
:
¨¨ 
x
¨¨  !
=>
¨¨" $
x
¨¨% &
.
¨¨& '
UserId
¨¨' -
,
¨¨- .
principalTable
ŠŠ &
:
ŠŠ& '
$str
ŠŠ( 5
,
ŠŠ5 6
principalColumn
ŞŞ '
:
ŞŞ' (
$str
ŞŞ) -
,
ŞŞ- .
onDelete
ŤŤ  
:
ŤŤ  !
ReferentialAction
ŤŤ" 3
.
ŤŤ3 4
Cascade
ŤŤ4 ;
)
ŤŤ; <
;
ŤŤ< =
}
ŹŹ 
)
ŹŹ 
;
ŹŹ 
migrationBuilder
ŽŽ 
.
ŽŽ 
CreateTable
ŽŽ (
(
ŽŽ( )
name
ŻŻ 
:
ŻŻ 
$str
ŻŻ (
,
ŻŻ( )
columns
°° 
:
°° 
table
°° 
=>
°° !
new
°°" %
{
ąą 
UserId
˛˛ 
=
˛˛ 
table
˛˛ "
.
˛˛" #
Column
˛˛# )
<
˛˛) *
string
˛˛* 0
>
˛˛0 1
(
˛˛1 2
nullable
˛˛2 :
:
˛˛: ;
false
˛˛< A
)
˛˛A B
,
˛˛B C
LoginProvider
łł !
=
łł" #
table
łł$ )
.
łł) *
Column
łł* 0
<
łł0 1
string
łł1 7
>
łł7 8
(
łł8 9
nullable
łł9 A
:
łłA B
false
łłC H
)
łłH I
,
łłI J
Name
´´ 
=
´´ 
table
´´  
.
´´  !
Column
´´! '
<
´´' (
string
´´( .
>
´´. /
(
´´/ 0
nullable
´´0 8
:
´´8 9
false
´´: ?
)
´´? @
,
´´@ A
Value
ľľ 
=
ľľ 
table
ľľ !
.
ľľ! "
Column
ľľ" (
<
ľľ( )
string
ľľ) /
>
ľľ/ 0
(
ľľ0 1
nullable
ľľ1 9
:
ľľ9 :
true
ľľ; ?
)
ľľ? @
}
śś 
,
śś 
constraints
ˇˇ 
:
ˇˇ 
table
ˇˇ "
=>
ˇˇ# %
{
¸¸ 
table
šš 
.
šš 

PrimaryKey
šš $
(
šš$ %
$str
šš% :
,
šš: ;
x
šš< =
=>
šš> @
new
ššA D
{
ššE F
x
ššG H
.
ššH I
UserId
ššI O
,
ššO P
x
ššQ R
.
ššR S
LoginProvider
ššS `
,
šš` a
x
ššb c
.
ššc d
Name
ššd h
}
šši j
)
ššj k
;
ššk l
table
şş 
.
şş 

ForeignKey
şş $
(
şş$ %
name
ťť 
:
ťť 
$str
ťť F
,
ťťF G
column
źź 
:
źź 
x
źź  !
=>
źź" $
x
źź% &
.
źź& '
UserId
źź' -
,
źź- .
principalTable
˝˝ &
:
˝˝& '
$str
˝˝( 5
,
˝˝5 6
principalColumn
žž '
:
žž' (
$str
žž) -
,
žž- .
onDelete
żż  
:
żż  !
ReferentialAction
żż" 3
.
żż3 4
Cascade
żż4 ;
)
żż; <
;
żż< =
}
ŔŔ 
)
ŔŔ 
;
ŔŔ 
migrationBuilder
ÂÂ 
.
ÂÂ 
CreateTable
ÂÂ (
(
ÂÂ( )
name
ĂĂ 
:
ĂĂ 
$str
ĂĂ #
,
ĂĂ# $
columns
ÄÄ 
:
ÄÄ 
table
ÄÄ 
=>
ÄÄ !
new
ÄÄ" %
{
ĹĹ 
stock_id
ĆĆ 
=
ĆĆ 
table
ĆĆ $
.
ĆĆ$ %
Column
ĆĆ% +
<
ĆĆ+ ,
int
ĆĆ, /
>
ĆĆ/ 0
(
ĆĆ0 1
nullable
ĆĆ1 9
:
ĆĆ9 :
false
ĆĆ; @
)
ĆĆ@ A
,
ĆĆA B

product_id
ÇÇ 
=
ÇÇ  
table
ÇÇ! &
.
ÇÇ& '
Column
ÇÇ' -
<
ÇÇ- .
int
ÇÇ. 1
>
ÇÇ1 2
(
ÇÇ2 3
nullable
ÇÇ3 ;
:
ÇÇ; <
false
ÇÇ= B
)
ÇÇB C
,
ÇÇC D
remaining_stock
ČČ #
=
ČČ$ %
table
ČČ& +
.
ČČ+ ,
Column
ČČ, 2
<
ČČ2 3
int
ČČ3 6
>
ČČ6 7
(
ČČ7 8
nullable
ČČ8 @
:
ČČ@ A
false
ČČB G
)
ČČG H
}
ÉÉ 
,
ÉÉ 
constraints
ĘĘ 
:
ĘĘ 
table
ĘĘ "
=>
ĘĘ# %
{
ËË 
table
ĚĚ 
.
ĚĚ 

PrimaryKey
ĚĚ $
(
ĚĚ$ %
$str
ĚĚ% /
,
ĚĚ/ 0
x
ĚĚ1 2
=>
ĚĚ3 5
x
ĚĚ6 7
.
ĚĚ7 8
stock_id
ĚĚ8 @
)
ĚĚ@ A
;
ĚĚA B
table
ÍÍ 
.
ÍÍ 

ForeignKey
ÍÍ $
(
ÍÍ$ %
name
ÎÎ 
:
ÎÎ 
$str
ÎÎ )
,
ÎÎ) *
column
ĎĎ 
:
ĎĎ 
x
ĎĎ  !
=>
ĎĎ" $
x
ĎĎ% &
.
ĎĎ& '

product_id
ĎĎ' 1
,
ĎĎ1 2
principalTable
ĐĐ &
:
ĐĐ& '
$str
ĐĐ( 1
,
ĐĐ1 2
principalColumn
ŃŃ '
:
ŃŃ' (
$str
ŃŃ) 5
,
ŃŃ5 6
onDelete
ŇŇ  
:
ŇŇ  !
ReferentialAction
ŇŇ" 3
.
ŇŇ3 4
Restrict
ŇŇ4 <
)
ŇŇ< =
;
ŇŇ= >
}
ÓÓ 
)
ÓÓ 
;
ÓÓ 
migrationBuilder
ŐŐ 
.
ŐŐ 
CreateTable
ŐŐ (
(
ŐŐ( )
name
ÖÖ 
:
ÖÖ 
$str
ÖÖ 
,
ÖÖ 
columns
×× 
:
×× 
table
×× 
=>
×× !
new
××" %
{
ŘŘ 
id
ŮŮ 
=
ŮŮ 
table
ŮŮ 
.
ŮŮ 
Column
ŮŮ %
<
ŮŮ% &
int
ŮŮ& )
>
ŮŮ) *
(
ŮŮ* +
nullable
ŮŮ+ 3
:
ŮŮ3 4
false
ŮŮ5 :
)
ŮŮ: ;
,
ŮŮ; <
Name
ÚÚ 
=
ÚÚ 
table
ÚÚ  
.
ÚÚ  !
Column
ÚÚ! '
<
ÚÚ' (
string
ÚÚ( .
>
ÚÚ. /
(
ÚÚ/ 0
unicode
ÚÚ0 7
:
ÚÚ7 8
false
ÚÚ9 >
,
ÚÚ> ?
	maxLength
ÚÚ@ I
:
ÚÚI J
$num
ÚÚK M
,
ÚÚM N
nullable
ÚÚO W
:
ÚÚW X
false
ÚÚY ^
)
ÚÚ^ _
,
ÚÚ_ `
Address
ŰŰ 
=
ŰŰ 
table
ŰŰ #
.
ŰŰ# $
Column
ŰŰ$ *
<
ŰŰ* +
string
ŰŰ+ 1
>
ŰŰ1 2
(
ŰŰ2 3
unicode
ŰŰ3 :
:
ŰŰ: ;
false
ŰŰ< A
,
ŰŰA B
	maxLength
ŰŰC L
:
ŰŰL M
$num
ŰŰN Q
,
ŰŰQ R
nullable
ŰŰS [
:
ŰŰ[ \
false
ŰŰ] b
)
ŰŰb c
,
ŰŰc d
Card_Number
ÜÜ 
=
ÜÜ  !
table
ÜÜ" '
.
ÜÜ' (
Column
ÜÜ( .
<
ÜÜ. /
string
ÜÜ/ 5
>
ÜÜ5 6
(
ÜÜ6 7
unicode
ÜÜ7 >
:
ÜÜ> ?
false
ÜÜ@ E
,
ÜÜE F
	maxLength
ÜÜG P
:
ÜÜP Q
$num
ÜÜR T
,
ÜÜT U
nullable
ÜÜV ^
:
ÜÜ^ _
false
ÜÜ` e
)
ÜÜe f
,
ÜÜf g
role_id
ÝÝ 
=
ÝÝ 
table
ÝÝ #
.
ÝÝ# $
Column
ÝÝ$ *
<
ÝÝ* +
int
ÝÝ+ .
>
ÝÝ. /
(
ÝÝ/ 0
nullable
ÝÝ0 8
:
ÝÝ8 9
false
ÝÝ: ?
)
ÝÝ? @
}
ŢŢ 
,
ŢŢ 
constraints
ßß 
:
ßß 
table
ßß "
=>
ßß# %
{
ŕŕ 
table
áá 
.
áá 

PrimaryKey
áá $
(
áá$ %
$str
áá% .
,
áá. /
x
áá0 1
=>
áá2 4
x
áá5 6
.
áá6 7
id
áá7 9
)
áá9 :
;
áá: ;
table
ââ 
.
ââ 

ForeignKey
ââ $
(
ââ$ %
name
ăă 
:
ăă 
$str
ăă (
,
ăă( )
column
ää 
:
ää 
x
ää  !
=>
ää" $
x
ää% &
.
ää& '
role_id
ää' .
,
ää. /
principalTable
ĺĺ &
:
ĺĺ& '
$str
ĺĺ( .
,
ĺĺ. /
principalColumn
ćć '
:
ćć' (
$str
ćć) 2
,
ćć2 3
onDelete
çç  
:
çç  !
ReferentialAction
çç" 3
.
çç3 4
Restrict
çç4 <
)
çç< =
;
çç= >
}
čč 
)
čč 
;
čč 
migrationBuilder
ęę 
.
ęę 
CreateTable
ęę (
(
ęę( )
name
ëë 
:
ëë 
$str
ëë 
,
ëë 
columns
ěě 
:
ěě 
table
ěě 
=>
ěě !
new
ěě" %
{
íí 
order_id
îî 
=
îî 
table
îî $
.
îî$ %
Column
îî% +
<
îî+ ,
int
îî, /
>
îî/ 0
(
îî0 1
nullable
îî1 9
:
îî9 :
false
îî; @
)
îî@ A
,
îîA B
has_been_placed
ďď #
=
ďď$ %
table
ďď& +
.
ďď+ ,
Column
ďď, 2
<
ďď2 3
int
ďď3 6
>
ďď6 7
(
ďď7 8
nullable
ďď8 @
:
ďď@ A
false
ďďB G
)
ďďG H
,
ďďH I
	client_id
đđ 
=
đđ 
table
đđ  %
.
đđ% &
Column
đđ& ,
<
đđ, -
int
đđ- 0
>
đđ0 1
(
đđ1 2
nullable
đđ2 :
:
đđ: ;
false
đđ< A
)
đđA B
}
ńń 
,
ńń 
constraints
ňň 
:
ňň 
table
ňň "
=>
ňň# %
{
óó 
table
ôô 
.
ôô 

PrimaryKey
ôô $
(
ôô$ %
$str
ôô% /
,
ôô/ 0
x
ôô1 2
=>
ôô3 5
x
ôô6 7
.
ôô7 8
order_id
ôô8 @
)
ôô@ A
;
ôôA B
table
őő 
.
őő 

ForeignKey
őő $
(
őő$ %
name
öö 
:
öö 
$str
öö )
,
öö) *
column
÷÷ 
:
÷÷ 
x
÷÷  !
=>
÷÷" $
x
÷÷% &
.
÷÷& '
	client_id
÷÷' 0
,
÷÷0 1
principalTable
řř &
:
řř& '
$str
řř( .
,
řř. /
principalColumn
ůů '
:
ůů' (
$str
ůů) -
,
ůů- .
onDelete
úú  
:
úú  !
ReferentialAction
úú" 3
.
úú3 4
Restrict
úú4 <
)
úú< =
;
úú= >
}
űű 
)
űű 
;
űű 
migrationBuilder
ýý 
.
ýý 
CreateIndex
ýý (
(
ýý( )
name
ţţ 
:
ţţ 
$str
ţţ 2
,
ţţ2 3
table
˙˙ 
:
˙˙ 
$str
˙˙ )
,
˙˙) *
column
 
:
 
$str
  
)
  !
;
! "
migrationBuilder
 
.
 
CreateIndex
 (
(
( )
name
 
:
 
$str
 %
,
% &
table
 
:
 
$str
 $
,
$ %
column
 
:
 
$str
 (
,
( )
unique
 
:
 
true
 
,
 
filter
 
:
 
$str
 6
)
6 7
;
7 8
migrationBuilder
 
.
 
CreateIndex
 (
(
( )
name
 
:
 
$str
 2
,
2 3
table
 
:
 
$str
 )
,
) *
column
 
:
 
$str
  
)
  !
;
! "
migrationBuilder
 
.
 
CreateIndex
 (
(
( )
name
 
:
 
$str
 2
,
2 3
table
 
:
 
$str
 )
,
) *
column
 
:
 
$str
  
)
  !
;
! "
migrationBuilder
 
.
 
CreateIndex
 (
(
( )
name
 
:
 
$str
 1
,
1 2
table
 
:
 
$str
 (
,
( )
column
 
:
 
$str
  
)
  !
;
! "
migrationBuilder
 
.
 
CreateIndex
 (
(
( )
name
 
:
 
$str
 "
,
" #
table
 
:
 
$str
 $
,
$ %
column
 
:
 
$str
 )
)
) *
;
* +
migrationBuilder
 
.
 
CreateIndex
 (
(
( )
name
 
:
 
$str
 %
,
% &
table
 
:
 
$str
 $
,
$ %
column
   
:
   
$str
   ,
,
  , -
unique
ĄĄ 
:
ĄĄ 
true
ĄĄ 
,
ĄĄ 
filter
˘˘ 
:
˘˘ 
$str
˘˘ :
)
˘˘: ;
;
˘˘; <
migrationBuilder
¤¤ 
.
¤¤ 
CreateIndex
¤¤ (
(
¤¤( )
name
ĽĽ 
:
ĽĽ 
$str
ĽĽ *
,
ĽĽ* +
table
ŚŚ 
:
ŚŚ 
$str
ŚŚ 
,
ŚŚ 
column
§§ 
:
§§ 
$str
§§ #
)
§§# $
;
§§$ %
migrationBuilder
ŠŠ 
.
ŠŠ 
CreateIndex
ŠŠ (
(
ŠŠ( )
name
ŞŞ 
:
ŞŞ 
$str
ŞŞ 1
,
ŞŞ1 2
table
ŤŤ 
:
ŤŤ 
$str
ŤŤ $
,
ŤŤ$ %
column
ŹŹ 
:
ŹŹ 
$str
ŹŹ $
)
ŹŹ$ %
;
ŹŹ% &
migrationBuilder
ŽŽ 
.
ŽŽ 
CreateIndex
ŽŽ (
(
ŽŽ( )
name
ŻŻ 
:
ŻŻ 
$str
ŻŻ '
,
ŻŻ' (
table
°° 
:
°° 
$str
°° 
,
°° 
column
ąą 
:
ąą 
$str
ąą !
)
ąą! "
;
ąą" #
}
˛˛ 	
	protected
´´ 
override
´´ 
void
´´ 
Down
´´  $
(
´´$ %
MigrationBuilder
´´% 5
migrationBuilder
´´6 F
)
´´F G
{
ľľ 	
migrationBuilder
śś 
.
śś 
	DropTable
śś &
(
śś& '
name
ˇˇ 
:
ˇˇ 
$str
ˇˇ (
)
ˇˇ( )
;
ˇˇ) *
migrationBuilder
šš 
.
šš 
	DropTable
šš &
(
šš& '
name
şş 
:
şş 
$str
şş (
)
şş( )
;
şş) *
migrationBuilder
źź 
.
źź 
	DropTable
źź &
(
źź& '
name
˝˝ 
:
˝˝ 
$str
˝˝ (
)
˝˝( )
;
˝˝) *
migrationBuilder
żż 
.
żż 
	DropTable
żż &
(
żż& '
name
ŔŔ 
:
ŔŔ 
$str
ŔŔ '
)
ŔŔ' (
;
ŔŔ( )
migrationBuilder
ÂÂ 
.
ÂÂ 
	DropTable
ÂÂ &
(
ÂÂ& '
name
ĂĂ 
:
ĂĂ 
$str
ĂĂ (
)
ĂĂ( )
;
ĂĂ) *
migrationBuilder
ĹĹ 
.
ĹĹ 
	DropTable
ĹĹ &
(
ĹĹ& '
name
ĆĆ 
:
ĆĆ 
$str
ĆĆ  
)
ĆĆ  !
;
ĆĆ! "
migrationBuilder
ČČ 
.
ČČ 
	DropTable
ČČ &
(
ČČ& '
name
ÉÉ 
:
ÉÉ 
$str
ÉÉ 
)
ÉÉ 
;
ÉÉ 
migrationBuilder
ËË 
.
ËË 
	DropTable
ËË &
(
ËË& '
name
ĚĚ 
:
ĚĚ 
$str
ĚĚ #
)
ĚĚ# $
;
ĚĚ$ %
migrationBuilder
ÎÎ 
.
ÎÎ 
	DropTable
ÎÎ &
(
ÎÎ& '
name
ĎĎ 
:
ĎĎ 
$str
ĎĎ #
)
ĎĎ# $
;
ĎĎ$ %
migrationBuilder
ŃŃ 
.
ŃŃ 
	DropTable
ŃŃ &
(
ŃŃ& '
name
ŇŇ 
:
ŇŇ 
$str
ŇŇ #
)
ŇŇ# $
;
ŇŇ$ %
migrationBuilder
ÔÔ 
.
ÔÔ 
	DropTable
ÔÔ &
(
ÔÔ& '
name
ŐŐ 
:
ŐŐ 
$str
ŐŐ 
)
ŐŐ 
;
ŐŐ 
migrationBuilder
×× 
.
×× 
	DropTable
×× &
(
××& '
name
ŘŘ 
:
ŘŘ 
$str
ŘŘ 
)
ŘŘ  
;
ŘŘ  !
migrationBuilder
ÚÚ 
.
ÚÚ 
	DropTable
ÚÚ &
(
ÚÚ& '
name
ŰŰ 
:
ŰŰ 
$str
ŰŰ 
)
ŰŰ 
;
ŰŰ 
}
ÜÜ 	
}
ÝÝ 
}ŢŢ ż
E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Migrations\20191109091815_addedIdentity1.cs
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
} ż
E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Migrations\20191109093339_addedIdentity2.cs
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
} ż
E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Migrations\20191109100253_addedIdentity3.cs
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
} ť	
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
} ˛Ę
E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Models\EcommerceContext.cs
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
 
HasMaxLength
 !
(
! "
$num
" %
)
% &
.
 !
ValueGeneratedNever
 (
(
( )
)
) *
;
* +
entity
 
.
 
Property
 
(
  
e
  !
=>
" $
e
% &
.
& '

CategoryId
' 1
)
1 2
.
 

IsRequired
 
(
  
)
  !
.
 
HasColumnName
 "
(
" #
$str
# 0
)
0 1
.
 
HasMaxLength
 !
(
! "
$num
" %
)
% &
;
& '
entity
 
.
 
Property
 
(
  
e
  !
=>
" $
e
% &
.
& '
	ProductId
' 0
)
0 1
.
 

IsRequired
 
(
  
)
  !
.
 
HasColumnName
 "
(
" #
$str
# /
)
/ 0
.
 
HasMaxLength
 !
(
! "
$num
" %
)
% &
;
& '
entity
 
.
 
HasOne
 
(
 
d
 
=>
  "
d
# $
.
$ %
Category
% -
)
- .
.
 
WithMany
 
(
 
p
 
=>
  "
p
# $
.
$ %
ProductCategory
% 4
)
4 5
.
 
HasForeignKey
 "
(
" #
d
# $
=>
% '
d
( )
.
) *

CategoryId
* 4
)
4 5
.
 
OnDelete
 
(
 
DeleteBehavior
 ,
.
, -
ClientSetNull
- :
)
: ;
.
 
HasConstraintName
 &
(
& '
$str
' =
)
= >
;
> ?
entity
 
.
 
HasOne
 
(
 
d
 
=>
  "
d
# $
.
$ %
Product
% ,
)
, -
.
 
WithMany
 
(
 
p
 
=>
  "
p
# $
.
$ %
ProductCategory
% 4
)
4 5
.
 
HasForeignKey
 "
(
" #
d
# $
=>
% '
d
( )
.
) *
	ProductId
* 3
)
3 4
.
 
OnDelete
 
(
 
DeleteBehavior
 ,
.
, -
ClientSetNull
- :
)
: ;
.
 
HasConstraintName
 &
(
& '
$str
' =
)
= >
;
> ?
}
 
)
 
;
 
builder
 
.
 
Entity
 
<
 
ProductOrder
 '
>
' (
(
( )
entity
) /
=>
0 2
{
 
entity
 
.
 
HasKey
 
(
 
e
 
=>
  "
e
# $
.
$ %
IdProductOrder
% 3
)
3 4
.
 
HasName
 
(
 
$str
 0
)
0 1
;
1 2
entity
 
.
 
Property
 
(
  
e
  !
=>
" $
e
% &
.
& '
IdProductOrder
' 5
)
5 6
.
   
HasMaxLength
   !
(
  ! "
$num
  " %
)
  % &
.
ĄĄ !
ValueGeneratedNever
ĄĄ (
(
ĄĄ( )
)
ĄĄ) *
;
ĄĄ* +
entity
ŁŁ 
.
ŁŁ 
Property
ŁŁ 
(
ŁŁ  
e
ŁŁ  !
=>
ŁŁ" $
e
ŁŁ% &
.
ŁŁ& '
	OrderIdFk
ŁŁ' 0
)
ŁŁ0 1
.
¤¤ 

IsRequired
¤¤ 
(
¤¤  
)
¤¤  !
.
ĽĽ 
HasColumnName
ĽĽ "
(
ĽĽ" #
$str
ĽĽ# .
)
ĽĽ. /
.
ŚŚ 
HasMaxLength
ŚŚ !
(
ŚŚ! "
$num
ŚŚ" %
)
ŚŚ% &
;
ŚŚ& '
entity
¨¨ 
.
¨¨ 
Property
¨¨ 
(
¨¨  
e
¨¨  !
=>
¨¨" $
e
¨¨% &
.
¨¨& '
ProductIdFk
¨¨' 2
)
¨¨2 3
.
ŠŠ 

IsRequired
ŠŠ 
(
ŠŠ  
)
ŠŠ  !
.
ŞŞ 
HasColumnName
ŞŞ "
(
ŞŞ" #
$str
ŞŞ# 0
)
ŞŞ0 1
.
ŤŤ 
HasMaxLength
ŤŤ !
(
ŤŤ! "
$num
ŤŤ" %
)
ŤŤ% &
;
ŤŤ& '
entity
­­ 
.
­­ 
HasOne
­­ 
(
­­ 
d
­­ 
=>
­­  "
d
­­# $
.
­­$ %!
OrderIdFkNavigation
­­% 8
)
­­8 9
.
ŽŽ 
WithMany
ŽŽ 
(
ŽŽ 
p
ŽŽ 
=>
ŽŽ  "
p
ŽŽ# $
.
ŽŽ$ %
ProductOrder
ŽŽ% 1
)
ŽŽ1 2
.
ŻŻ 
HasForeignKey
ŻŻ "
(
ŻŻ" #
d
ŻŻ# $
=>
ŻŻ% '
d
ŻŻ( )
.
ŻŻ) *
	OrderIdFk
ŻŻ* 3
)
ŻŻ3 4
.
°° 
OnDelete
°° 
(
°° 
DeleteBehavior
°° ,
.
°°, -
ClientSetNull
°°- :
)
°°: ;
.
ąą 
HasConstraintName
ąą &
(
ąą& '
$str
ąą' :
)
ąą: ;
;
ąą; <
entity
łł 
.
łł 
HasOne
łł 
(
łł 
d
łł 
=>
łł  "
d
łł# $
.
łł$ %#
ProductIdFkNavigation
łł% :
)
łł: ;
.
´´ 
WithMany
´´ 
(
´´ 
p
´´ 
=>
´´  "
p
´´# $
.
´´$ %
ProductOrder
´´% 1
)
´´1 2
.
ľľ 
HasForeignKey
ľľ "
(
ľľ" #
d
ľľ# $
=>
ľľ% '
d
ľľ( )
.
ľľ) *
ProductIdFk
ľľ* 5
)
ľľ5 6
.
śś 
OnDelete
śś 
(
śś 
DeleteBehavior
śś ,
.
śś, -
ClientSetNull
śś- :
)
śś: ;
.
ˇˇ 
HasConstraintName
ˇˇ &
(
ˇˇ& '
$str
ˇˇ' :
)
ˇˇ: ;
;
ˇˇ; <
}
¸¸ 
)
¸¸ 
;
¸¸ 
builder
şş 
.
şş 
Entity
şş 
<
şş 
Role
şş 
>
şş  
(
şş  !
entity
şş! '
=>
şş( *
{
ťť 
entity
źź 
.
źź 
Property
źź 
(
źź  
e
źź  !
=>
źź" $
e
źź% &
.
źź& '
RoleId
źź' -
)
źź- .
.
˝˝ 
HasColumnName
˝˝ "
(
˝˝" #
$str
˝˝# ,
)
˝˝, -
.
žž !
ValueGeneratedNever
žž (
(
žž( )
)
žž) *
;
žž* +
entity
ŔŔ 
.
ŔŔ 
Property
ŔŔ 
(
ŔŔ  
e
ŔŔ  !
=>
ŔŔ" $
e
ŔŔ% &
.
ŔŔ& '
Role1
ŔŔ' ,
)
ŔŔ, -
.
ÁÁ 

IsRequired
ÁÁ 
(
ÁÁ  
)
ÁÁ  !
.
ÂÂ 
HasColumnName
ÂÂ "
(
ÂÂ" #
$str
ÂÂ# )
)
ÂÂ) *
.
ĂĂ 
HasMaxLength
ĂĂ !
(
ĂĂ! "
$num
ĂĂ" $
)
ĂĂ$ %
.
ÄÄ 
	IsUnicode
ÄÄ 
(
ÄÄ 
false
ÄÄ $
)
ÄÄ$ %
;
ÄÄ% &
}
ĹĹ 
)
ĹĹ 
;
ĹĹ 
builder
ÇÇ 
.
ÇÇ 
Entity
ÇÇ 
<
ÇÇ 

StockEntry
ÇÇ %
>
ÇÇ% &
(
ÇÇ& '
entity
ÇÇ' -
=>
ÇÇ. 0
{
ČČ 
entity
ÉÉ 
.
ÉÉ 
HasKey
ÉÉ 
(
ÉÉ 
e
ÉÉ 
=>
ÉÉ  "
e
ÉÉ# $
.
ÉÉ$ %
StockId
ÉÉ% ,
)
ÉÉ, -
.
ĘĘ 
HasName
ĘĘ 
(
ĘĘ 
$str
ĘĘ '
)
ĘĘ' (
;
ĘĘ( )
entity
ĚĚ 
.
ĚĚ 
ToTable
ĚĚ 
(
ĚĚ 
$str
ĚĚ ,
)
ĚĚ, -
;
ĚĚ- .
entity
ÎÎ 
.
ÎÎ 
Property
ÎÎ 
(
ÎÎ  
e
ÎÎ  !
=>
ÎÎ" $
e
ÎÎ% &
.
ÎÎ& '
StockId
ÎÎ' .
)
ÎÎ. /
.
ĎĎ 
HasColumnName
ĎĎ "
(
ĎĎ" #
$str
ĎĎ# -
)
ĎĎ- .
.
ĐĐ 
HasMaxLength
ĐĐ !
(
ĐĐ! "
$num
ĐĐ" %
)
ĐĐ% &
.
ŃŃ !
ValueGeneratedNever
ŃŃ (
(
ŃŃ( )
)
ŃŃ) *
;
ŃŃ* +
entity
ÓÓ 
.
ÓÓ 
Property
ÓÓ 
(
ÓÓ  
e
ÓÓ  !
=>
ÓÓ" $
e
ÓÓ% &
.
ÓÓ& '
	ProductId
ÓÓ' 0
)
ÓÓ0 1
.
ÔÔ 

IsRequired
ÔÔ 
(
ÔÔ  
)
ÔÔ  !
.
ŐŐ 
HasColumnName
ŐŐ "
(
ŐŐ" #
$str
ŐŐ# /
)
ŐŐ/ 0
.
ÖÖ 
HasMaxLength
ÖÖ !
(
ÖÖ! "
$num
ÖÖ" %
)
ÖÖ% &
;
ÖÖ& '
entity
ŘŘ 
.
ŘŘ 
Property
ŘŘ 
(
ŘŘ  
e
ŘŘ  !
=>
ŘŘ" $
e
ŘŘ% &
.
ŘŘ& '
RemainingStock
ŘŘ' 5
)
ŘŘ5 6
.
ŘŘ6 7
HasColumnName
ŘŘ7 D
(
ŘŘD E
$str
ŘŘE V
)
ŘŘV W
;
ŘŘW X
entity
ÚÚ 
.
ÚÚ 
HasOne
ÚÚ 
(
ÚÚ 
d
ÚÚ 
=>
ÚÚ  "
d
ÚÚ# $
.
ÚÚ$ %
Product
ÚÚ% ,
)
ÚÚ, -
.
ŰŰ 
WithMany
ŰŰ 
(
ŰŰ 
p
ŰŰ 
=>
ŰŰ  "
p
ŰŰ# $
.
ŰŰ$ %

StockEntry
ŰŰ% /
)
ŰŰ/ 0
.
ÜÜ 
HasForeignKey
ÜÜ "
(
ÜÜ" #
d
ÜÜ# $
=>
ÜÜ% '
d
ÜÜ( )
.
ÜÜ) *
	ProductId
ÜÜ* 3
)
ÜÜ3 4
.
ÝÝ 
OnDelete
ÝÝ 
(
ÝÝ 
DeleteBehavior
ÝÝ ,
.
ÝÝ, -
ClientSetNull
ÝÝ- :
)
ÝÝ: ;
.
ŢŢ 
HasConstraintName
ŢŢ &
(
ŢŢ& '
$str
ŢŢ' 8
)
ŢŢ8 9
;
ŢŢ9 :
}
ßß 
)
ßß 
;
ßß 
builder
áá 
.
áá 
Entity
áá 
<
áá 
User
áá 
>
áá  
(
áá  !
entity
áá! '
=>
áá( *
{
ââ 
entity
ăă 
.
ăă 
Property
ăă 
(
ăă  
e
ăă  !
=>
ăă" $
e
ăă% &
.
ăă& '
Id
ăă' )
)
ăă) *
.
ää 
HasColumnName
ää "
(
ää" #
$str
ää# '
)
ää' (
.
ĺĺ 
HasMaxLength
ĺĺ !
(
ĺĺ! "
$num
ĺĺ" %
)
ĺĺ% &
.
ćć !
ValueGeneratedNever
ćć (
(
ćć( )
)
ćć) *
;
ćć* +
entity
čč 
.
čč 
Property
čč 
(
čč  
e
čč  !
=>
čč" $
e
čč% &
.
čč& '
Address
čč' .
)
čč. /
.
éé 

IsRequired
éé 
(
éé  
)
éé  !
.
ęę 
HasMaxLength
ęę !
(
ęę! "
$num
ęę" %
)
ęę% &
.
ëë 
	IsUnicode
ëë 
(
ëë 
false
ëë $
)
ëë$ %
;
ëë% &
entity
íí 
.
íí 
Property
íí 
(
íí  
e
íí  !
=>
íí" $
e
íí% &
.
íí& '

CardNumber
íí' 1
)
íí1 2
.
îî 

IsRequired
îî 
(
îî  
)
îî  !
.
ďď 
HasColumnName
ďď "
(
ďď" #
$str
ďď# 0
)
ďď0 1
.
đđ 
HasMaxLength
đđ !
(
đđ! "
$num
đđ" $
)
đđ$ %
.
ńń 
	IsUnicode
ńń 
(
ńń 
false
ńń $
)
ńń$ %
;
ńń% &
entity
óó 
.
óó 
Property
óó 
(
óó  
e
óó  !
=>
óó" $
e
óó% &
.
óó& '
Name
óó' +
)
óó+ ,
.
ôô 

IsRequired
ôô 
(
ôô  
)
ôô  !
.
őő 
HasMaxLength
őő !
(
őő! "
$num
őő" $
)
őő$ %
.
öö 
	IsUnicode
öö 
(
öö 
false
öö $
)
öö$ %
;
öö% &
entity
řř 
.
řř 
Property
řř 
(
řř  
e
řř  !
=>
řř" $
e
řř% &
.
řř& '
RoleId
řř' -
)
řř- .
.
řř. /
HasColumnName
řř/ <
(
řř< =
$str
řř= F
)
řřF G
;
řřG H
entity
úú 
.
úú 
HasOne
úú 
(
úú 
d
úú 
=>
úú  "
d
úú# $
.
úú$ %
Role
úú% )
)
úú) *
.
űű 
WithMany
űű 
(
űű 
p
űű 
=>
űű  "
p
űű# $
.
űű$ %
User
űű% )
)
űű) *
.
üü 
HasForeignKey
üü "
(
üü" #
d
üü# $
=>
üü% '
d
üü( )
.
üü) *
RoleId
üü* 0
)
üü0 1
.
ýý 
OnDelete
ýý 
(
ýý 
DeleteBehavior
ýý ,
.
ýý, -
ClientSetNull
ýý- :
)
ýý: ;
.
ţţ 
HasConstraintName
ţţ &
(
ţţ& '
$str
ţţ' 1
)
ţţ1 2
;
ţţ2 3
}
˙˙ 
)
˙˙ 
;
˙˙ 
}
 	
}
 
} Ű
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
} §
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
} ś
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
} ¸	
E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Models\ProductCategory.cs
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
} Ĺ	
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
} ő
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
} 
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
} ň
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
} š	
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
} ń&
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