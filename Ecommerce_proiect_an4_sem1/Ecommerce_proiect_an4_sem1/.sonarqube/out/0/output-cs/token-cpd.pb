µ	
èE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\IdentityHostingStartup.cs
[

 
assembly

 	
:

	 

HostingStartup

 
(

 
typeof

  
(

  !&
Ecommerce_proiect_an4_sem1

! ;
.

; <
Areas

< A
.

A B
Identity

B J
.

J K"
IdentityHostingStartup

K a
)

a b
)

b c
]

c d
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
.$ %
Areas% *
.* +
Identity+ 3
{ 
public 

class "
IdentityHostingStartup '
:( )
IHostingStartup* 9
{ 
public 
void 
	Configure 
( 
IWebHostBuilder -
builder. 5
)5 6
{ 	
builder 
. 
ConfigureServices %
(% &
(& '
context' .
,. /
services0 8
)8 9
=>: <
{= >
} 
) 
; 
} 	
} 
} Ä
öE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\AccessDenied.cshtml.cs
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
{ 
public		 

class		 
AccessDeniedModel		 "
:		# $
	PageModel		% .
{

 
public 
void 
OnGet 
( 
) 
{ 	
} 	
} 
} Ä
öE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\ConfirmEmail.cshtml.cs
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
ConfirmEmailModel "
:# $
	PageModel% .
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
public 
ConfirmEmailModel  
(  !
UserManager! ,
<, -
IdentityUser- 9
>9 :
userManager; F
)F G
{ 	
_userManager 
= 
userManager &
;& '
} 	
public 
async 
Task 
< 
IActionResult '
>' (

OnGetAsync) 3
(3 4
string4 :
userId; A
,A B
stringC I
codeJ N
)N O
{ 	
if 
( 
userId 
== 
null 
|| !
code" &
==' )
null* .
). /
{ 
return 
RedirectToPage %
(% &
$str& .
). /
;/ 0
} 
var 
user 
= 
await 
_userManager )
.) *
FindByIdAsync* 7
(7 8
userId8 >
)> ?
;? @
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
{  ? @
userId  @ F
}  F G
'.  G I
"  I J
)  J K
;  K L
}!! 
var## 
result## 
=## 
await## 
_userManager## +
.##+ ,
ConfirmEmailAsync##, =
(##= >
user##> B
,##B C
code##D H
)##H I
;##I J
if$$ 
($$ 
!$$ 
result$$ 
.$$ 
	Succeeded$$ !
)$$! "
{%% 
throw&& 
new&& %
InvalidOperationException&& 3
(&&3 4
$"&&4 65
)Error confirming email for user with ID '&&6 _
{&&_ `
userId&&` f
}&&f g
':&&g i
"&&i j
)&&j k
;&&k l
}'' 
return)) 
Page)) 
()) 
))) 
;)) 
}** 	
}++ 
},, Ë\
õE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\ExternalLogin.cshtml.cs
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
class 
ExternalLoginModel #
:$ %
	PageModel& /
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
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
ILogger  
<  !
ExternalLoginModel! 3
>3 4
_logger5 <
;< =
public 
ExternalLoginModel !
(! "
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
,5 6
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
ILogger 
< 
ExternalLoginModel &
>& '
logger( .
). /
{ 	
_signInManager 
= 
signInManager *
;* +
_userManager 
= 
userManager &
;& '
_logger 
= 
logger 
; 
} 	
[   	
BindProperty  	 
]   
public!! 

InputModel!! 
Input!! 
{!!  !
get!!" %
;!!% &
set!!' *
;!!* +
}!!, -
public## 
string## 
LoginProvider## #
{##$ %
get##& )
;##) *
set##+ .
;##. /
}##0 1
public%% 
string%% 
	ReturnUrl%% 
{%%  !
get%%" %
;%%% &
set%%' *
;%%* +
}%%, -
['' 	
TempData''	 
]'' 
public(( 
string(( 
ErrorMessage(( "
{((# $
get((% (
;((( )
set((* -
;((- .
}((/ 0
public** 
class** 

InputModel** 
{++ 	
[,, 
Required,, 
],, 
[-- 
EmailAddress-- 
]-- 
public.. 
string.. 
Email.. 
{..  !
get.." %
;..% &
set..' *
;..* +
}.., -
}// 	
public11 
IActionResult11 

OnGetAsync11 '
(11' (
)11( )
{22 	
return33 
RedirectToPage33 !
(33! "
$str33" +
)33+ ,
;33, -
}44 	
public66 
IActionResult66 
OnPost66 #
(66# $
string66$ *
provider66+ 3
,663 4
string665 ;
	returnUrl66< E
=66F G
null66H L
)66L M
{77 	
var99 
redirectUrl99 
=99 
Url99 !
.99! "
Page99" &
(99& '
$str99' 8
,998 9
pageHandler99: E
:99E F
$str99G Q
,99Q R
values99S Y
:99Y Z
new99[ ^
{99_ `
	returnUrl99a j
}99k l
)99l m
;99m n
var:: 

properties:: 
=:: 
_signInManager:: +
.::+ ,5
)ConfigureExternalAuthenticationProperties::, U
(::U V
provider::V ^
,::^ _
redirectUrl::` k
)::k l
;::l m
return;; 
new;; 
ChallengeResult;; &
(;;& '
provider;;' /
,;;/ 0

properties;;1 ;
);;; <
;;;< =
}<< 	
public>> 
async>> 
Task>> 
<>> 
IActionResult>> '
>>>' (
OnGetCallbackAsync>>) ;
(>>; <
string>>< B
	returnUrl>>C L
=>>M N
null>>O S
,>>S T
string>>U [
remoteError>>\ g
=>>h i
null>>j n
)>>n o
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
(AA 
remoteErrorAA 
!=AA 
nullAA #
)AA# $
{BB 
ErrorMessageCC 
=CC 
$"CC !*
Error from external provider: CC! ?
{CC? @
remoteErrorCC@ K
}CCK L
"CCL M
;CCM N
returnDD 
RedirectToPageDD %
(DD% &
$strDD& /
,DD/ 0
newDD1 4
{DD5 6
	ReturnUrlDD6 ?
=DD@ A
	returnUrlDDB K
}DDL M
)DDM N
;DDN O
}EE 
varFF 
infoFF 
=FF 
awaitFF 
_signInManagerFF +
.FF+ ,%
GetExternalLoginInfoAsyncFF, E
(FFE F
)FFF G
;FFG H
ifGG 
(GG 
infoGG 
==GG 
nullGG 
)GG 
{HH 
ErrorMessageII 
=II 
$strII J
;IIJ K
returnJJ 
RedirectToPageJJ %
(JJ% &
$strJJ& /
,JJ/ 0
newJJ1 4
{JJ5 6
	ReturnUrlJJ7 @
=JJA B
	returnUrlJJC L
}JJM N
)JJN O
;JJO P
}KK 
varNN 
resultNN 
=NN 
awaitNN 
_signInManagerNN -
.NN- .$
ExternalLoginSignInAsyncNN. F
(NNF G
infoNNG K
.NNK L
LoginProviderNNL Y
,NNY Z
infoNN[ _
.NN_ `
ProviderKeyNN` k
,NNk l
isPersistentNNm y
:NNy z
false	NN{ Ä
,
NNÄ Å
bypassTwoFactor
NNÇ ë
:
NNí ì
true
NNî ò
)
NNò ô
;
NNô ö
ifOO 
(OO 
resultOO 
.OO 
	SucceededOO  
)OO  !
{PP 
_loggerQQ 
.QQ 
LogInformationQQ &
(QQ& '
$strQQ' X
,QQX Y
infoQQZ ^
.QQ^ _
	PrincipalQQ_ h
.QQh i
IdentityQQi q
.QQq r
NameQQr v
,QQv w
infoQQx |
.QQ| }
LoginProvider	QQ} ä
)
QQä ã
;
QQã å
returnRR 
LocalRedirectRR $
(RR$ %
	returnUrlRR% .
)RR. /
;RR/ 0
}SS 
ifTT 
(TT 
resultTT 
.TT 
IsLockedOutTT "
)TT" #
{UU 
returnVV 
RedirectToPageVV %
(VV% &
$strVV& 1
)VV1 2
;VV2 3
}WW 
elseXX 
{YY 
	ReturnUrl[[ 
=[[ 
	returnUrl[[ %
;[[% &
LoginProvider\\ 
=\\ 
info\\  $
.\\$ %
LoginProvider\\% 2
;\\2 3
if]] 
(]] 
info]] 
.]] 
	Principal]] "
.]]" #
HasClaim]]# +
(]]+ ,
c]], -
=>]]. 0
c]]1 2
.]]2 3
Type]]3 7
==]]8 :

ClaimTypes]]; E
.]]E F
Email]]F K
)]]K L
)]]L M
{^^ 
Input__ 
=__ 
new__ 

InputModel__  *
{`` 
Emailaa 
=aa 
infoaa  $
.aa$ %
	Principalaa% .
.aa. /
FindFirstValueaa/ =
(aa= >

ClaimTypesaa> H
.aaH I
EmailaaI N
)aaN O
}bb 
;bb 
}cc 
returndd 
Pagedd 
(dd 
)dd 
;dd 
}ee 
}ff 	
publichh 
asynchh 
Taskhh 
<hh 
IActionResulthh '
>hh' (#
OnPostConfirmationAsynchh) @
(hh@ A
stringhhA G
	returnUrlhhH Q
=hhR S
nullhhT X
)hhX Y
{ii 	
	returnUrljj 
=jj 
	returnUrljj !
??jj" $
Urljj% (
.jj( )
Contentjj) 0
(jj0 1
$strjj1 5
)jj5 6
;jj6 7
varll 
infoll 
=ll 
awaitll 
_signInManagerll +
.ll+ ,%
GetExternalLoginInfoAsyncll, E
(llE F
)llF G
;llG H
ifmm 
(mm 
infomm 
==mm 
nullmm 
)mm 
{nn 
ErrorMessageoo 
=oo 
$stroo ^
;oo^ _
returnpp 
RedirectToPagepp %
(pp% &
$strpp& /
,pp/ 0
newpp1 4
{pp5 6
	ReturnUrlpp7 @
=ppA B
	returnUrlppC L
}ppM N
)ppN O
;ppO P
}qq 
ifss 
(ss 

ModelStatess 
.ss 
IsValidss "
)ss" #
{tt 
varuu 
useruu 
=uu 
newuu 
IdentityUseruu +
{uu, -
UserNameuu. 6
=uu7 8
Inputuu9 >
.uu> ?
Emailuu? D
,uuD E
EmailuuF K
=uuL M
InputuuN S
.uuS T
EmailuuT Y
}uuZ [
;uu[ \
varvv 
resultvv 
=vv 
awaitvv "
_userManagervv# /
.vv/ 0
CreateAsyncvv0 ;
(vv; <
uservv< @
)vv@ A
;vvA B
ifww 
(ww 
resultww 
.ww 
	Succeededww $
)ww$ %
{xx 
resultyy 
=yy 
awaityy "
_userManageryy# /
.yy/ 0
AddLoginAsyncyy0 =
(yy= >
useryy> B
,yyB C
infoyyD H
)yyH I
;yyI J
ifzz 
(zz 
resultzz 
.zz 
	Succeededzz (
)zz( )
{{{ 
await|| 
_signInManager|| ,
.||, -
SignInAsync||- 8
(||8 9
user||9 =
,||= >
isPersistent||? K
:||K L
false||M R
)||R S
;||S T
_logger}} 
.}}  
LogInformation}}  .
(}}. /
$str}}/ _
,}}_ `
info}}a e
.}}e f
LoginProvider}}f s
)}}s t
;}}t u
return~~ 
LocalRedirect~~ ,
(~~, -
	returnUrl~~- 6
)~~6 7
;~~7 8
} 
}
ÄÄ 
foreach
ÅÅ 
(
ÅÅ 
var
ÅÅ 
error
ÅÅ "
in
ÅÅ# %
result
ÅÅ& ,
.
ÅÅ, -
Errors
ÅÅ- 3
)
ÅÅ3 4
{
ÇÇ 

ModelState
ÉÉ 
.
ÉÉ 
AddModelError
ÉÉ ,
(
ÉÉ, -
string
ÉÉ- 3
.
ÉÉ3 4
Empty
ÉÉ4 9
,
ÉÉ9 :
error
ÉÉ; @
.
ÉÉ@ A
Description
ÉÉA L
)
ÉÉL M
;
ÉÉM N
}
ÑÑ 
}
ÖÖ 
LoginProvider
áá 
=
áá 
info
áá  
.
áá  !
LoginProvider
áá! .
;
áá. /
	ReturnUrl
àà 
=
àà 
	returnUrl
àà !
;
àà! "
return
ââ 
Page
ââ 
(
ââ 
)
ââ 
;
ââ 
}
ää 	
}
ãã 
}åå Õ!
úE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\ForgotPassword.cshtml.cs
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
{ 
[ 
AllowAnonymous 
] 
public 

class 
ForgotPasswordModel $
:% &
	PageModel' 0
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
IEmailSender %
_emailSender& 2
;2 3
public 
ForgotPasswordModel "
(" #
UserManager# .
<. /
IdentityUser/ ;
>; <
userManager= H
,H I
IEmailSenderJ V
emailSenderW b
)b c
{ 	
_userManager 
= 
userManager &
;& '
_emailSender 
= 
emailSender &
;& '
} 	
[ 	
BindProperty	 
] 
public 

InputModel 
Input 
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
[ 
Required 
] 
[   
EmailAddress   
]   
public!! 
string!! 
Email!! 
{!!  !
get!!" %
;!!% &
set!!' *
;!!* +
}!!, -
}"" 	
public$$ 
async$$ 
Task$$ 
<$$ 
IActionResult$$ '
>$$' (
OnPostAsync$$) 4
($$4 5
)$$5 6
{%% 	
if&& 
(&& 

ModelState&& 
.&& 
IsValid&& "
)&&" #
{'' 
var(( 
user(( 
=(( 
await((  
_userManager((! -
.((- .
FindByEmailAsync((. >
(((> ?
Input((? D
.((D E
Email((E J
)((J K
;((K L
if)) 
()) 
user)) 
==)) 
null))  
||))! #
!))$ %
())% &
await))& +
_userManager)), 8
.))8 9!
IsEmailConfirmedAsync))9 N
())N O
user))O S
)))S T
)))T U
)))U V
{** 
return,, 
RedirectToPage,, )
(,,) *
$str,,* H
),,H I
;,,I J
}-- 
var11 
code11 
=11 
await11  
_userManager11! -
.11- .+
GeneratePasswordResetTokenAsync11. M
(11M N
user11N R
)11R S
;11S T
var22 
callbackUrl22 
=22  !
Url22" %
.22% &
Page22& *
(22* +
$str33 ,
,33, -
pageHandler44 
:44  
null44! %
,44% &
values55 
:55 
new55 
{55  !
code55" &
}55' (
,55( )
protocol66 
:66 
Request66 %
.66% &
Scheme66& ,
)66, -
;66- .
await88 
_emailSender88 "
.88" #
SendEmailAsync88# 1
(881 2
Input99 
.99 
Email99 
,99  
$str:: $
,::$ %
$";; 3
'Please reset your password by <a href=';; =
{;;= >
HtmlEncoder;;> I
.;;I J
Default;;J Q
.;;Q R
Encode;;R X
(;;X Y
callbackUrl;;Y d
);;d e
};;e f 
'>clicking here</a>.;;f z
";;z {
);;{ |
;;;| }
return== 
RedirectToPage== %
(==% &
$str==& D
)==D E
;==E F
}>> 
return@@ 
Page@@ 
(@@ 
)@@ 
;@@ 
}AA 	
}BB 
}CC —
®E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\ForgotPasswordConfirmation.cshtml.cs
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
{ 
[		 
AllowAnonymous		 
]		 
public

 

class

 &
ForgotPasswordConfirmation

 +
:

, -
	PageModel

. 7
{ 
public 
void 
OnGet 
( 
) 
{ 	
} 	
} 
} ∞
ïE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\Lockout.cshtml.cs
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
class 
LockoutModel 
: 
	PageModel  )
{ 
public 
void 
OnGet 
( 
) 
{ 	
} 	
} 
} ˇ8
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
{ 
[ 
AllowAnonymous 
] 
public 

class 
LoginWith2faModel "
:# $
	PageModel% .
{ 
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
ILogger  
<  !
LoginWith2faModel! 2
>2 3
_logger4 ;
;; <
public 
LoginWith2faModel  
(  !
SignInManager! .
<. /
IdentityUser/ ;
>; <
signInManager= J
,J K
ILoggerL S
<S T
LoginWith2faModelT e
>e f
loggerg m
)m n
{ 	
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
[ 	
BindProperty	 
] 
public 

InputModel 
Input 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 

RememberMe 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
	ReturnUrl 
{  !
get" %
;% &
set' *
;* +
}, -
public!! 
class!! 

InputModel!! 
{"" 	
[## 
Required## 
]## 
[$$ 
StringLength$$ 
($$ 
$num$$ 
,$$ 
ErrorMessage$$ )
=$$* +
$str$$, j
,$$j k
MinimumLength$$l y
=$$z {
$num$$| }
)$$} ~
]$$~ 
[%% 
DataType%% 
(%% 
DataType%% 
.%% 
Text%% #
)%%# $
]%%$ %
[&& 
Display&& 
(&& 
Name&& 
=&& 
$str&& 0
)&&0 1
]&&1 2
public'' 
string'' 
TwoFactorCode'' '
{''( )
get''* -
;''- .
set''/ 2
;''2 3
}''4 5
[)) 
Display)) 
()) 
Name)) 
=)) 
$str)) 3
)))3 4
]))4 5
public** 
bool** 
RememberMachine** '
{**( )
get*** -
;**- .
set**/ 2
;**2 3
}**4 5
}++ 	
public-- 
async-- 
Task-- 
<-- 
IActionResult-- '
>--' (

OnGetAsync--) 3
(--3 4
bool--4 8

rememberMe--9 C
,--C D
string--E K
	returnUrl--L U
=--V W
null--X \
)--\ ]
{.. 	
var00 
user00 
=00 
await00 
_signInManager00 +
.00+ ,/
#GetTwoFactorAuthenticationUserAsync00, O
(00O P
)00P Q
;00Q R
if22 
(22 
user22 
==22 
null22 
)22 
{33 
throw44 
new44 %
InvalidOperationException44 3
(443 4
$"444 6:
.Unable to load two-factor authentication user.446 d
"44d e
)44e f
;44f g
}55 
	ReturnUrl77 
=77 
	returnUrl77 !
;77! "

RememberMe88 
=88 

rememberMe88 #
;88# $
return:: 
Page:: 
(:: 
):: 
;:: 
};; 	
public== 
async== 
Task== 
<== 
IActionResult== '
>==' (
OnPostAsync==) 4
(==4 5
bool==5 9

rememberMe==: D
,==D E
string==F L
	returnUrl==M V
===W X
null==Y ]
)==] ^
{>> 	
if?? 
(?? 
!?? 

ModelState?? 
.?? 
IsValid?? #
)??# $
{@@ 
returnAA 
PageAA 
(AA 
)AA 
;AA 
}BB 
	returnUrlDD 
=DD 
	returnUrlDD !
??DD" $
UrlDD% (
.DD( )
ContentDD) 0
(DD0 1
$strDD1 5
)DD5 6
;DD6 7
varFF 
userFF 
=FF 
awaitFF 
_signInManagerFF +
.FF+ ,/
#GetTwoFactorAuthenticationUserAsyncFF, O
(FFO P
)FFP Q
;FFQ R
ifGG 
(GG 
userGG 
==GG 
nullGG 
)GG 
{HH 
throwII 
newII %
InvalidOperationExceptionII 3
(II3 4
$"II4 6:
.Unable to load two-factor authentication user.II6 d
"IId e
)IIe f
;IIf g
}JJ 
varLL 
authenticatorCodeLL !
=LL" #
InputLL$ )
.LL) *
TwoFactorCodeLL* 7
.LL7 8
ReplaceLL8 ?
(LL? @
$strLL@ C
,LLC D
stringLLE K
.LLK L
EmptyLLL Q
)LLQ R
.LLR S
ReplaceLLS Z
(LLZ [
$strLL[ ^
,LL^ _
stringLL` f
.LLf g
EmptyLLg l
)LLl m
;LLm n
varNN 
resultNN 
=NN 
awaitNN 
_signInManagerNN -
.NN- .-
!TwoFactorAuthenticatorSignInAsyncNN. O
(NNO P
authenticatorCodeNNP a
,NNa b

rememberMeNNc m
,NNm n
InputNNo t
.NNt u
RememberMachine	NNu Ñ
)
NNÑ Ö
;
NNÖ Ü
ifPP 
(PP 
resultPP 
.PP 
	SucceededPP  
)PP  !
{QQ 
_loggerRR 
.RR 
LogInformationRR &
(RR& '
$strRR' T
,RRT U
userRRV Z
.RRZ [
IdRR[ ]
)RR] ^
;RR^ _
returnSS 
LocalRedirectSS $
(SS$ %
	returnUrlSS% .
)SS. /
;SS/ 0
}TT 
elseUU 
ifUU 
(UU 
resultUU 
.UU 
IsLockedOutUU '
)UU' (
{VV 
_loggerWW 
.WW 

LogWarningWW "
(WW" #
$strWW# P
,WWP Q
userWWR V
.WWV W
IdWWW Y
)WWY Z
;WWZ [
returnXX 
RedirectToPageXX %
(XX% &
$strXX& 1
)XX1 2
;XX2 3
}YY 
elseZZ 
{[[ 
_logger\\ 
.\\ 

LogWarning\\ "
(\\" #
$str\\# d
,\\d e
user\\f j
.\\j k
Id\\k m
)\\m n
;\\n o

ModelState]] 
.]] 
AddModelError]] (
(]]( )
string]]) /
.]]/ 0
Empty]]0 5
,]]5 6
$str]]7 T
)]]T U
;]]U V
return^^ 
Page^^ 
(^^ 
)^^ 
;^^ 
}__ 
}`` 	
}aa 
}bb Î2
£E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\LoginWithRecoveryCode.cshtml.cs
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
{ 
[ 
AllowAnonymous 
] 
public 

class &
LoginWithRecoveryCodeModel +
:, -
	PageModel. 7
{ 
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
ILogger  
<  !&
LoginWithRecoveryCodeModel! ;
>; <
_logger= D
;D E
public &
LoginWithRecoveryCodeModel )
() *
SignInManager* 7
<7 8
IdentityUser8 D
>D E
signInManagerF S
,S T
ILoggerU \
<\ ]&
LoginWithRecoveryCodeModel] w
>w x
loggery 
)	 Ä
{ 	
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
[ 	
BindProperty	 
] 
public 

InputModel 
Input 
{  !
get" %
;% &
set' *
;* +
}, -
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
[!! 
BindProperty!! 
]!! 
["" 
Required"" 
]"" 
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
$str$$ +
)$$+ ,
]$$, -
public%% 
string%% 
RecoveryCode%% &
{%%' (
get%%) ,
;%%, -
set%%. 1
;%%1 2
}%%3 4
}&& 	
public(( 
async(( 
Task(( 
<(( 
IActionResult(( '
>((' (

OnGetAsync(() 3
(((3 4
string((4 :
	returnUrl((; D
=((E F
null((G K
)((K L
{)) 	
var++ 
user++ 
=++ 
await++ 
_signInManager++ +
.+++ ,/
#GetTwoFactorAuthenticationUserAsync++, O
(++O P
)++P Q
;++Q R
if,, 
(,, 
user,, 
==,, 
null,, 
),, 
{-- 
throw.. 
new.. %
InvalidOperationException.. 3
(..3 4
$"..4 6:
.Unable to load two-factor authentication user...6 d
"..d e
)..e f
;..f g
}// 
	ReturnUrl11 
=11 
	returnUrl11 !
;11! "
return33 
Page33 
(33 
)33 
;33 
}44 	
public66 
async66 
Task66 
<66 
IActionResult66 '
>66' (
OnPostAsync66) 4
(664 5
string665 ;
	returnUrl66< E
=66F G
null66H L
)66L M
{77 	
if88 
(88 
!88 

ModelState88 
.88 
IsValid88 #
)88# $
{99 
return:: 
Page:: 
(:: 
):: 
;:: 
};; 
var== 
user== 
=== 
await== 
_signInManager== +
.==+ ,/
#GetTwoFactorAuthenticationUserAsync==, O
(==O P
)==P Q
;==Q R
if>> 
(>> 
user>> 
==>> 
null>> 
)>> 
{?? 
throw@@ 
new@@ %
InvalidOperationException@@ 3
(@@3 4
$"@@4 6:
.Unable to load two-factor authentication user.@@6 d
"@@d e
)@@e f
;@@f g
}AA 
varCC 
recoveryCodeCC 
=CC 
InputCC $
.CC$ %
RecoveryCodeCC% 1
.CC1 2
ReplaceCC2 9
(CC9 :
$strCC: =
,CC= >
stringCC? E
.CCE F
EmptyCCF K
)CCK L
;CCL M
varEE 
resultEE 
=EE 
awaitEE 
_signInManagerEE -
.EE- .,
 TwoFactorRecoveryCodeSignInAsyncEE. N
(EEN O
recoveryCodeEEO [
)EE[ \
;EE\ ]
ifGG 
(GG 
resultGG 
.GG 
	SucceededGG  
)GG  !
{HH 
_loggerII 
.II 
LogInformationII &
(II& '
$strII' `
,II` a
userIIb f
.IIf g
IdIIg i
)IIi j
;IIj k
returnJJ 
LocalRedirectJJ $
(JJ$ %
	returnUrlJJ% .
??JJ/ 1
UrlJJ2 5
.JJ5 6
ContentJJ6 =
(JJ= >
$strJJ> B
)JJB C
)JJC D
;JJD E
}KK 
ifLL 
(LL 
resultLL 
.LL 
IsLockedOutLL "
)LL" #
{MM 
_loggerNN 
.NN 

LogWarningNN "
(NN" #
$strNN# P
,NNP Q
userNNR V
.NNV W
IdNNW Y
)NNY Z
;NNZ [
returnOO 
RedirectToPageOO %
(OO% &
$strOO& 1
)OO1 2
;OO2 3
}PP 
elseQQ 
{RR 
_loggerSS 
.SS 

LogWarningSS "
(SS" #
$strSS# _
,SS_ `
userSSa e
.SSe f
IdSSf h
)SSh i
;SSi j

ModelStateTT 
.TT 
AddModelErrorTT (
(TT( )
stringTT) /
.TT/ 0
EmptyTT0 5
,TT5 6
$strTT7 W
)TTW X
;TTX Y
returnUU 
PageUU 
(UU 
)UU 
;UU 
}VV 
}WW 	
}XX 
}YY ·
îE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\Logout.cshtml.cs
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
{ 
[ 
AllowAnonymous 
] 
public 

class 
LogoutModel 
: 
	PageModel (
{ 
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
ILogger  
<  !
LogoutModel! ,
>, -
_logger. 5
;5 6
public 
LogoutModel 
( 
SignInManager (
<( )
IdentityUser) 5
>5 6
signInManager7 D
,D E
ILoggerF M
<M N
LogoutModelN Y
>Y Z
logger[ a
)a b
{ 	
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
public 
void 
OnGet 
( 
) 
{ 	
} 	
public 
async 
Task 
< 
IActionResult '
>' (
OnPost) /
(/ 0
string0 6
	returnUrl7 @
=A B
nullC G
)G H
{ 	
await 
_signInManager  
.  !
SignOutAsync! -
(- .
). /
;/ 0
_logger   
.   
LogInformation   "
(  " #
$str  # 5
)  5 6
;  6 7
if!! 
(!! 
	returnUrl!! 
!=!! 
null!! !
)!!! "
{"" 
return## 
LocalRedirect## $
(##$ %
	returnUrl##% .
)##. /
;##/ 0
}$$ 
else%% 
{&& 
return'' 
Page'' 
('' 
)'' 
;'' 
}(( 
})) 	
}** 
}++ Ü?
£E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\Manage\ChangePassword.cshtml.cs
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
ChangePasswordModel $
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
;C D
private 
readonly 
ILogger  
<  !
ChangePasswordModel! 4
>4 5
_logger6 =
;= >
public 
ChangePasswordModel "
(" #
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
,5 6
ILogger 
< 
ChangePasswordModel '
>' (
logger) /
)/ 0
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
[ 	
BindProperty	 
] 
public 

InputModel 
Input 
{  !
get" %
;% &
set' *
;* +
}, -
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
class"" 

InputModel"" 
{## 	
[$$ 
Required$$ 
]$$ 
[%% 
DataType%% 
(%% 
DataType%% 
.%% 
Password%% '
)%%' (
]%%( )
[&& 
Display&& 
(&& 
Name&& 
=&& 
$str&& .
)&&. /
]&&/ 0
public'' 
string'' 
OldPassword'' %
{''& '
get''( +
;''+ ,
set''- 0
;''0 1
}''2 3
[)) 
Required)) 
])) 
[** 
StringLength** 
(** 
$num** 
,** 
ErrorMessage** +
=**, -
$str**. l
,**l m
MinimumLength**n {
=**| }
$num**~ 
)	** Ä
]
**Ä Å
[++ 
DataType++ 
(++ 
DataType++ 
.++ 
Password++ '
)++' (
]++( )
[,, 
Display,, 
(,, 
Name,, 
=,, 
$str,, *
),,* +
],,+ ,
public-- 
string-- 
NewPassword-- %
{--& '
get--( +
;--+ ,
set--- 0
;--0 1
}--2 3
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
$str00 2
)002 3
]003 4
[11 
Compare11 
(11 
$str11 "
,11" #
ErrorMessage11$ 0
=111 2
$str113 m
)11m n
]11n o
public22 
string22 
ConfirmPassword22 )
{22* +
get22, /
;22/ 0
set221 4
;224 5
}226 7
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
};; 
var== 
hasPassword== 
=== 
await== #
_userManager==$ 0
.==0 1
HasPasswordAsync==1 A
(==A B
user==B F
)==F G
;==G H
if>> 
(>> 
!>> 
hasPassword>> 
)>> 
{?? 
return@@ 
RedirectToPage@@ %
(@@% &
$str@@& 5
)@@5 6
;@@6 7
}AA 
returnCC 
PageCC 
(CC 
)CC 
;CC 
}DD 	
publicFF 
asyncFF 
TaskFF 
<FF 
IActionResultFF '
>FF' (
OnPostAsyncFF) 4
(FF4 5
)FF5 6
{GG 	
ifHH 
(HH 
!HH 

ModelStateHH 
.HH 
IsValidHH #
)HH# $
{II 
returnJJ 
PageJJ 
(JJ 
)JJ 
;JJ 
}KK 
varMM 
userMM 
=MM 
awaitMM 
_userManagerMM )
.MM) *
GetUserAsyncMM* 6
(MM6 7
UserMM7 ;
)MM; <
;MM< =
ifNN 
(NN 
userNN 
==NN 
nullNN 
)NN 
{OO 
returnPP 
NotFoundPP 
(PP  
$"PP  ")
Unable to load user with ID 'PP" ?
{PP? @
_userManagerPP@ L
.PPL M
	GetUserIdPPM V
(PPV W
UserPPW [
)PP[ \
}PP\ ]
'.PP] _
"PP_ `
)PP` a
;PPa b
}QQ 
varSS  
changePasswordResultSS $
=SS% &
awaitSS' ,
_userManagerSS- 9
.SS9 :
ChangePasswordAsyncSS: M
(SSM N
userSSN R
,SSR S
InputSST Y
.SSY Z
OldPasswordSSZ e
,SSe f
InputSSg l
.SSl m
NewPasswordSSm x
)SSx y
;SSy z
ifTT 
(TT 
!TT  
changePasswordResultTT %
.TT% &
	SucceededTT& /
)TT/ 0
{UU 
foreachVV 
(VV 
varVV 
errorVV "
inVV# % 
changePasswordResultVV& :
.VV: ;
ErrorsVV; A
)VVA B
{WW 

ModelStateXX 
.XX 
AddModelErrorXX ,
(XX, -
stringXX- 3
.XX3 4
EmptyXX4 9
,XX9 :
errorXX; @
.XX@ A
DescriptionXXA L
)XXL M
;XXM N
}YY 
returnZZ 
PageZZ 
(ZZ 
)ZZ 
;ZZ 
}[[ 
await]] 
_signInManager]]  
.]]  !
RefreshSignInAsync]]! 3
(]]3 4
user]]4 8
)]]8 9
;]]9 :
_logger^^ 
.^^ 
LogInformation^^ "
(^^" #
$str^^# N
)^^N O
;^^O P
StatusMessage__ 
=__ 
$str__ =
;__= >
returnaa 
RedirectToPageaa !
(aa! "
)aa" #
;aa# $
}bb 	
}cc 
}dd ú4
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
RequirePassword<< 
)<<  
{== 
if>> 
(>> 
!>> 
await>> 
_userManager>> '
.>>' (
CheckPasswordAsync>>( :
(>>: ;
user>>; ?
,>>? @
Input>>A F
.>>F G
Password>>G O
)>>O P
)>>P Q
{?? 

ModelState@@ 
.@@ 
AddModelError@@ ,
(@@, -
string@@- 3
.@@3 4
Empty@@4 9
,@@9 :
$str@@; R
)@@R S
;@@S T
returnAA 
PageAA 
(AA  
)AA  !
;AA! "
}BB 
}CC 
varEE 
resultEE 
=EE 
awaitEE 
_userManagerEE +
.EE+ ,
DeleteAsyncEE, 7
(EE7 8
userEE8 <
)EE< =
;EE= >
varFF 
userIdFF 
=FF 
awaitFF 
_userManagerFF +
.FF+ ,
GetUserIdAsyncFF, :
(FF: ;
userFF; ?
)FF? @
;FF@ A
ifGG 
(GG 
!GG 
resultGG 
.GG 
	SucceededGG !
)GG! "
{HH 
throwII 
newII %
InvalidOperationExceptionII 3
(II3 4
$"II4 6>
2Unexpected error occurred deleteing user with ID 'II6 h
{IIh i
userIdIIi o
}IIo p
'.IIp r
"IIr s
)IIs t
;IIt u
}JJ 
awaitLL 
_signInManagerLL  
.LL  !
SignOutAsyncLL! -
(LL- .
)LL. /
;LL/ 0
_loggerNN 
.NN 
LogInformationNN "
(NN" #
$strNN# P
,NNP Q
userIdNNR X
)NNX Y
;NNY Z
returnPP 
RedirectPP 
(PP 
$strPP  
)PP  !
;PP! "
}QQ 	
}RR 
}SS Û(
üE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\Manage\Disable2fa.cshtml.cs
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
class 
Disable2faModel  
:! "
	PageModel# ,
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
<  !
Disable2faModel! 0
>0 1
_logger2 9
;9 :
public 
Disable2faModel 
( 
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
ILogger 
< 
Disable2faModel #
># $
logger% +
)+ ,
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
}"" 
if$$ 
($$ 
!$$ 
await$$ 
_userManager$$ #
.$$# $$
GetTwoFactorEnabledAsync$$$ <
($$< =
user$$= A
)$$A B
)$$B C
{%% 
throw&& 
new&& %
InvalidOperationException&& 3
(&&3 4
$"&&4 61
%Cannot disable 2FA for user with ID '&&6 [
{&&[ \
_userManager&&\ h
.&&h i
	GetUserId&&i r
(&&r s
User&&s w
)&&w x
}&&x y-
 ' as it's not currently enabled.	&&y ô
"
&&ô ö
)
&&ö õ
;
&&õ ú
}'' 
return)) 
Page)) 
()) 
))) 
;)) 
}** 	
public,, 
async,, 
Task,, 
<,, 
IActionResult,, '
>,,' (
OnPostAsync,,) 4
(,,4 5
),,5 6
{-- 	
var.. 
user.. 
=.. 
await.. 
_userManager.. )
...) *
GetUserAsync..* 6
(..6 7
User..7 ;
)..; <
;..< =
if// 
(// 
user// 
==// 
null// 
)// 
{00 
return11 
NotFound11 
(11  
$"11  ")
Unable to load user with ID '11" ?
{11? @
_userManager11@ L
.11L M
	GetUserId11M V
(11V W
User11W [
)11[ \
}11\ ]
'.11] _
"11_ `
)11` a
;11a b
}22 
var44 
disable2faResult44  
=44! "
await44# (
_userManager44) 5
.445 6$
SetTwoFactorEnabledAsync446 N
(44N O
user44O S
,44S T
false44U Z
)44Z [
;44[ \
if55 
(55 
!55 
disable2faResult55 !
.55! "
	Succeeded55" +
)55+ ,
{66 
throw77 
new77 %
InvalidOperationException77 3
(773 4
$"774 6F
:Unexpected error occurred disabling 2FA for user with ID '776 p
{77p q
_userManager77q }
.77} ~
	GetUserId	77~ á
(
77á à
User
77à å
)
77å ç
}
77ç é
'.
77é ê
"
77ê ë
)
77ë í
;
77í ì
}88 
_logger:: 
.:: 
LogInformation:: "
(::" #
$str::# N
,::N O
_userManager::P \
.::\ ]
	GetUserId::] f
(::f g
User::g k
)::k l
)::l m
;::m n
StatusMessage;; 
=;; 
$str;; m
;;;m n
return<< 
RedirectToPage<< !
(<<! "
$str<<" =
)<<= >
;<<> ?
}== 	
}>> 
}?? Ø"
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
}22 Èd
®E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\Manage\EnableAuthenticator.cshtml.cs
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
.$ %
Areas% *
.* +
Identity+ 3
.3 4
Pages4 9
.9 :
Account: A
.A B
ManageB H
{ 
public 

class $
EnableAuthenticatorModel )
:* +
	PageModel, 5
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
ILogger  
<  !$
EnableAuthenticatorModel! 9
>9 :
_logger; B
;B C
private 
readonly 

UrlEncoder #
_urlEncoder$ /
;/ 0
private 
const 
string "
AuthenticatorUriFormat 3
=4 5
$str6 m
;m n
public $
EnableAuthenticatorModel '
(' (
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
ILogger 
< $
EnableAuthenticatorModel ,
>, -
logger. 4
,4 5

UrlEncoder 

urlEncoder !
)! "
{ 	
_userManager 
= 
userManager &
;& '
_logger 
= 
logger 
; 
_urlEncoder 
= 

urlEncoder $
;$ %
}   	
public"" 
string"" 
	SharedKey"" 
{""  !
get""" %
;""% &
set""' *
;""* +
}"", -
public$$ 
string$$ 
AuthenticatorUri$$ &
{$$' (
get$$) ,
;$$, -
set$$. 1
;$$1 2
}$$3 4
[&& 	
TempData&&	 
]&& 
public'' 
string'' 
['' 
]'' 
RecoveryCodes'' %
{''& '
get''( +
;''+ ,
set''- 0
;''0 1
}''2 3
[)) 	
TempData))	 
])) 
public** 
string** 
StatusMessage** #
{**$ %
get**& )
;**) *
set**+ .
;**. /
}**0 1
[,, 	
BindProperty,,	 
],, 
public-- 

InputModel-- 
Input-- 
{--  !
get--" %
;--% &
set--' *
;--* +
}--, -
public// 
class// 

InputModel// 
{00 	
[11 
Required11 
]11 
[22 
StringLength22 
(22 
$num22 
,22 
ErrorMessage22 )
=22* +
$str22, j
,22j k
MinimumLength22l y
=22z {
$num22| }
)22} ~
]22~ 
[33 
DataType33 
(33 
DataType33 
.33 
Text33 #
)33# $
]33$ %
[44 
Display44 
(44 
Name44 
=44 
$str44 /
)44/ 0
]440 1
public55 
string55 
Code55 
{55  
get55! $
;55$ %
set55& )
;55) *
}55+ ,
}66 	
public88 
async88 
Task88 
<88 
IActionResult88 '
>88' (

OnGetAsync88) 3
(883 4
)884 5
{99 	
var:: 
user:: 
=:: 
await:: 
_userManager:: )
.::) *
GetUserAsync::* 6
(::6 7
User::7 ;
)::; <
;::< =
if;; 
(;; 
user;; 
==;; 
null;; 
);; 
{<< 
return== 
NotFound== 
(==  
$"==  ")
Unable to load user with ID '==" ?
{==? @
_userManager==@ L
.==L M
	GetUserId==M V
(==V W
User==W [
)==[ \
}==\ ]
'.==] _
"==_ `
)==` a
;==a b
}>> 
await@@ *
LoadSharedKeyAndQrCodeUriAsync@@ 0
(@@0 1
user@@1 5
)@@5 6
;@@6 7
returnBB 
PageBB 
(BB 
)BB 
;BB 
}CC 	
publicEE 
asyncEE 
TaskEE 
<EE 
IActionResultEE '
>EE' (
OnPostAsyncEE) 4
(EE4 5
)EE5 6
{FF 	
varGG 
userGG 
=GG 
awaitGG 
_userManagerGG )
.GG) *
GetUserAsyncGG* 6
(GG6 7
UserGG7 ;
)GG; <
;GG< =
ifHH 
(HH 
userHH 
==HH 
nullHH 
)HH 
{II 
returnJJ 
NotFoundJJ 
(JJ  
$"JJ  ")
Unable to load user with ID 'JJ" ?
{JJ? @
_userManagerJJ@ L
.JJL M
	GetUserIdJJM V
(JJV W
UserJJW [
)JJ[ \
}JJ\ ]
'.JJ] _
"JJ_ `
)JJ` a
;JJa b
}KK 
ifMM 
(MM 
!MM 

ModelStateMM 
.MM 
IsValidMM #
)MM# $
{NN 
awaitOO *
LoadSharedKeyAndQrCodeUriAsyncOO 4
(OO4 5
userOO5 9
)OO9 :
;OO: ;
returnPP 
PagePP 
(PP 
)PP 
;PP 
}QQ 
varTT 
verificationCodeTT  
=TT! "
InputTT# (
.TT( )
CodeTT) -
.TT- .
ReplaceTT. 5
(TT5 6
$strTT6 9
,TT9 :
stringTT; A
.TTA B
EmptyTTB G
)TTG H
.TTH I
ReplaceTTI P
(TTP Q
$strTTQ T
,TTT U
stringTTV \
.TT\ ]
EmptyTT] b
)TTb c
;TTc d
varVV 
is2faTokenValidVV 
=VV  !
awaitVV" '
_userManagerVV( 4
.VV4 5%
VerifyTwoFactorTokenAsyncVV5 N
(VVN O
userWW 
,WW 
_userManagerWW "
.WW" #
OptionsWW# *
.WW* +
TokensWW+ 1
.WW1 2&
AuthenticatorTokenProviderWW2 L
,WWL M
verificationCodeWWN ^
)WW^ _
;WW_ `
ifYY 
(YY 
!YY 
is2faTokenValidYY  
)YY  !
{ZZ 

ModelState[[ 
.[[ 
AddModelError[[ (
([[( )
$str[[) 5
,[[5 6
$str[[7 V
)[[V W
;[[W X
await\\ *
LoadSharedKeyAndQrCodeUriAsync\\ 4
(\\4 5
user\\5 9
)\\9 :
;\\: ;
return]] 
Page]] 
(]] 
)]] 
;]] 
}^^ 
await`` 
_userManager`` 
.`` $
SetTwoFactorEnabledAsync`` 7
(``7 8
user``8 <
,``< =
true``> B
)``B C
;``C D
varaa 
userIdaa 
=aa 
awaitaa 
_userManageraa +
.aa+ ,
GetUserIdAsyncaa, :
(aa: ;
useraa; ?
)aa? @
;aa@ A
_loggerbb 
.bb 
LogInformationbb "
(bb" #
$strbb# g
,bbg h
userIdbbi o
)bbo p
;bbp q
StatusMessagedd 
=dd 
$strdd G
;ddG H
ifff 
(ff 
awaitff 
_userManagerff "
.ff" ##
CountRecoveryCodesAsyncff# :
(ff: ;
userff; ?
)ff? @
==ffA C
$numffD E
)ffE F
{gg 
varhh 
recoveryCodeshh !
=hh" #
awaithh$ )
_userManagerhh* 6
.hh6 72
&GenerateNewTwoFactorRecoveryCodesAsynchh7 ]
(hh] ^
userhh^ b
,hhb c
$numhhd f
)hhf g
;hhg h
RecoveryCodesii 
=ii 
recoveryCodesii  -
.ii- .
ToArrayii. 5
(ii5 6
)ii6 7
;ii7 8
returnjj 
RedirectToPagejj %
(jj% &
$strjj& ;
)jj; <
;jj< =
}kk 
elsell 
{mm 
returnnn 
RedirectToPagenn %
(nn% &
$strnn& A
)nnA B
;nnB C
}oo 
}pp 	
privaterr 
asyncrr 
Taskrr *
LoadSharedKeyAndQrCodeUriAsyncrr 9
(rr9 :
IdentityUserrr: F
userrrG K
)rrK L
{ss 	
varuu 
unformattedKeyuu 
=uu  
awaituu! &
_userManageruu' 3
.uu3 4$
GetAuthenticatorKeyAsyncuu4 L
(uuL M
useruuM Q
)uuQ R
;uuR S
ifvv 
(vv 
stringvv 
.vv 
IsNullOrEmptyvv $
(vv$ %
unformattedKeyvv% 3
)vv3 4
)vv4 5
{ww 
awaitxx 
_userManagerxx "
.xx" #&
ResetAuthenticatorKeyAsyncxx# =
(xx= >
userxx> B
)xxB C
;xxC D
unformattedKeyyy 
=yy  
awaityy! &
_userManageryy' 3
.yy3 4$
GetAuthenticatorKeyAsyncyy4 L
(yyL M
useryyM Q
)yyQ R
;yyR S
}zz 
	SharedKey|| 
=|| 
	FormatKey|| !
(||! "
unformattedKey||" 0
)||0 1
;||1 2
var~~ 
email~~ 
=~~ 
await~~ 
_userManager~~ *
.~~* +
GetEmailAsync~~+ 8
(~~8 9
user~~9 =
)~~= >
;~~> ?
AuthenticatorUri 
= 
GenerateQrCodeUri 0
(0 1
email1 6
,6 7
unformattedKey8 F
)F G
;G H
}
ÄÄ 	
private
ÇÇ 
string
ÇÇ 
	FormatKey
ÇÇ  
(
ÇÇ  !
string
ÇÇ! '
unformattedKey
ÇÇ( 6
)
ÇÇ6 7
{
ÉÉ 	
var
ÑÑ 
result
ÑÑ 
=
ÑÑ 
new
ÑÑ 
StringBuilder
ÑÑ *
(
ÑÑ* +
)
ÑÑ+ ,
;
ÑÑ, -
int
ÖÖ 
currentPosition
ÖÖ 
=
ÖÖ  !
$num
ÖÖ" #
;
ÖÖ# $
while
ÜÜ 
(
ÜÜ 
currentPosition
ÜÜ "
+
ÜÜ# $
$num
ÜÜ% &
<
ÜÜ' (
unformattedKey
ÜÜ) 7
.
ÜÜ7 8
Length
ÜÜ8 >
)
ÜÜ> ?
{
áá 
result
àà 
.
àà 
Append
àà 
(
àà 
unformattedKey
àà ,
.
àà, -
	Substring
àà- 6
(
àà6 7
currentPosition
àà7 F
,
ààF G
$num
ààH I
)
ààI J
)
ààJ K
.
ààK L
Append
ààL R
(
ààR S
$str
ààS V
)
ààV W
;
ààW X
currentPosition
ââ 
+=
ââ  "
$num
ââ# $
;
ââ$ %
}
ää 
if
ãã 
(
ãã 
currentPosition
ãã 
<
ãã  !
unformattedKey
ãã" 0
.
ãã0 1
Length
ãã1 7
)
ãã7 8
{
åå 
result
çç 
.
çç 
Append
çç 
(
çç 
unformattedKey
çç ,
.
çç, -
	Substring
çç- 6
(
çç6 7
currentPosition
çç7 F
)
ççF G
)
ççG H
;
ççH I
}
éé 
return
êê 
result
êê 
.
êê 
ToString
êê "
(
êê" #
)
êê# $
.
êê$ %
ToLowerInvariant
êê% 5
(
êê5 6
)
êê6 7
;
êê7 8
}
ëë 	
private
ìì 
string
ìì 
GenerateQrCodeUri
ìì (
(
ìì( )
string
ìì) /
email
ìì0 5
,
ìì5 6
string
ìì7 =
unformattedKey
ìì> L
)
ììL M
{
îî 	
return
ïï 
string
ïï 
.
ïï 
Format
ïï  
(
ïï  !$
AuthenticatorUriFormat
ññ &
,
ññ& '
_urlEncoder
óó 
.
óó 
Encode
óó "
(
óó" #
$str
óó# ?
)
óó? @
,
óó@ A
_urlEncoder
òò 
.
òò 
Encode
òò "
(
òò" #
email
òò# (
)
òò( )
,
òò) *
unformattedKey
ôô 
)
ôô 
;
ôô  
}
öö 	
}
õõ 
}úú ëR
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

partial 
class 

IndexModel #
:$ %
	PageModel& /
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
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
IEmailSender %
_emailSender& 2
;2 3
public 

IndexModel 
( 
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
,5 6
IEmailSender 
emailSender $
)$ %
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
_emailSender 
= 
emailSender &
;& '
} 	
public 
string 
Username 
{  
get! $
;$ %
set& )
;) *
}+ ,
public   
bool   
IsEmailConfirmed   $
{  % &
get  ' *
;  * +
set  , /
;  / 0
}  1 2
["" 	
TempData""	 
]"" 
public## 
string## 
StatusMessage## #
{##$ %
get##& )
;##) *
set##+ .
;##. /
}##0 1
[%% 	
BindProperty%%	 
]%% 
public&& 

InputModel&& 
Input&& 
{&&  !
get&&" %
;&&% &
set&&' *
;&&* +
}&&, -
public(( 
class(( 

InputModel(( 
{)) 	
[** 
Required** 
]** 
[++ 
EmailAddress++ 
]++ 
public,, 
string,, 
Email,, 
{,,  !
get,," %
;,,% &
set,,' *
;,,* +
},,, -
[.. 
Phone.. 
].. 
[// 
Display// 
(// 
Name// 
=// 
$str// *
)//* +
]//+ ,
public00 
string00 
PhoneNumber00 %
{00& '
get00( +
;00+ ,
set00- 0
;000 1
}002 3
}11 	
public33 
async33 
Task33 
<33 
IActionResult33 '
>33' (

OnGetAsync33) 3
(333 4
)334 5
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
}99 
var;; 
userName;; 
=;; 
await;;  
_userManager;;! -
.;;- .
GetUserNameAsync;;. >
(;;> ?
user;;? C
);;C D
;;;D E
var<< 
email<< 
=<< 
await<< 
_userManager<< *
.<<* +
GetEmailAsync<<+ 8
(<<8 9
user<<9 =
)<<= >
;<<> ?
var== 
phoneNumber== 
=== 
await== #
_userManager==$ 0
.==0 1
GetPhoneNumberAsync==1 D
(==D E
user==E I
)==I J
;==J K
Username?? 
=?? 
userName?? 
;??  
InputAA 
=AA 
newAA 

InputModelAA "
{BB 
EmailCC 
=CC 
emailCC 
,CC 
PhoneNumberDD 
=DD 
phoneNumberDD )
}EE 
;EE 
IsEmailConfirmedGG 
=GG 
awaitGG $
_userManagerGG% 1
.GG1 2!
IsEmailConfirmedAsyncGG2 G
(GGG H
userGGH L
)GGL M
;GGM N
returnII 
PageII 
(II 
)II 
;II 
}JJ 	
publicLL 
asyncLL 
TaskLL 
<LL 
IActionResultLL '
>LL' (
OnPostAsyncLL) 4
(LL4 5
)LL5 6
{MM 	
ifNN 
(NN 
!NN 

ModelStateNN 
.NN 
IsValidNN #
)NN# $
{OO 
returnPP 
PagePP 
(PP 
)PP 
;PP 
}QQ 
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
varYY 
emailYY 
=YY 
awaitYY 
_userManagerYY *
.YY* +
GetEmailAsyncYY+ 8
(YY8 9
userYY9 =
)YY= >
;YY> ?
ifZZ 
(ZZ 
InputZZ 
.ZZ 
EmailZZ 
!=ZZ 
emailZZ $
)ZZ$ %
{[[ 
var\\ 
setEmailResult\\ "
=\\# $
await\\% *
_userManager\\+ 7
.\\7 8
SetEmailAsync\\8 E
(\\E F
user\\F J
,\\J K
Input\\L Q
.\\Q R
Email\\R W
)\\W X
;\\X Y
if]] 
(]] 
!]] 
setEmailResult]] #
.]]# $
	Succeeded]]$ -
)]]- .
{^^ 
var__ 
userId__ 
=__  
await__! &
_userManager__' 3
.__3 4
GetUserIdAsync__4 B
(__B C
user__C G
)__G H
;__H I
throw`` 
new`` %
InvalidOperationException`` 7
(``7 8
$"``8 :F
:Unexpected error occurred setting email for user with ID '``: t
{``t u
userId``u {
}``{ |
'.``| ~
"``~ 
)	`` Ä
;
``Ä Å
}aa 
}bb 
vardd 
phoneNumberdd 
=dd 
awaitdd #
_userManagerdd$ 0
.dd0 1
GetPhoneNumberAsyncdd1 D
(ddD E
userddE I
)ddI J
;ddJ K
ifee 
(ee 
Inputee 
.ee 
PhoneNumberee !
!=ee" $
phoneNumberee% 0
)ee0 1
{ff 
vargg 
setPhoneResultgg "
=gg# $
awaitgg% *
_userManagergg+ 7
.gg7 8
SetPhoneNumberAsyncgg8 K
(ggK L
userggL P
,ggP Q
InputggR W
.ggW X
PhoneNumberggX c
)ggc d
;ggd e
ifhh 
(hh 
!hh 
setPhoneResulthh #
.hh# $
	Succeededhh$ -
)hh- .
{ii 
varjj 
userIdjj 
=jj  
awaitjj! &
_userManagerjj' 3
.jj3 4
GetUserIdAsyncjj4 B
(jjB C
userjjC G
)jjG H
;jjH I
throwkk 
newkk %
InvalidOperationExceptionkk 7
(kk7 8
$"kk8 :M
AUnexpected error occurred setting phone number for user with ID 'kk: {
{kk{ |
userId	kk| Ç
}
kkÇ É
'.
kkÉ Ö
"
kkÖ Ü
)
kkÜ á
;
kká à
}ll 
}mm 
awaitoo 
_signInManageroo  
.oo  !
RefreshSignInAsyncoo! 3
(oo3 4
useroo4 8
)oo8 9
;oo9 :
StatusMessagepp 
=pp 
$strpp ;
;pp; <
returnqq 
RedirectToPageqq !
(qq! "
)qq" #
;qq# $
}rr 	
publictt 
asynctt 
Tasktt 
<tt 
IActionResulttt '
>tt' (,
 OnPostSendVerificationEmailAsynctt) I
(ttI J
)ttJ K
{uu 	
ifvv 
(vv 
!vv 

ModelStatevv 
.vv 
IsValidvv #
)vv# $
{ww 
returnxx 
Pagexx 
(xx 
)xx 
;xx 
}yy 
var{{ 
user{{ 
={{ 
await{{ 
_userManager{{ )
.{{) *
GetUserAsync{{* 6
({{6 7
User{{7 ;
){{; <
;{{< =
if|| 
(|| 
user|| 
==|| 
null|| 
)|| 
{}} 
return~~ 
NotFound~~ 
(~~  
$"~~  ")
Unable to load user with ID '~~" ?
{~~? @
_userManager~~@ L
.~~L M
	GetUserId~~M V
(~~V W
User~~W [
)~~[ \
}~~\ ]
'.~~] _
"~~_ `
)~~` a
;~~a b
} 
var
ÇÇ 
userId
ÇÇ 
=
ÇÇ 
await
ÇÇ 
_userManager
ÇÇ +
.
ÇÇ+ ,
GetUserIdAsync
ÇÇ, :
(
ÇÇ: ;
user
ÇÇ; ?
)
ÇÇ? @
;
ÇÇ@ A
var
ÉÉ 
email
ÉÉ 
=
ÉÉ 
await
ÉÉ 
_userManager
ÉÉ *
.
ÉÉ* +
GetEmailAsync
ÉÉ+ 8
(
ÉÉ8 9
user
ÉÉ9 =
)
ÉÉ= >
;
ÉÉ> ?
var
ÑÑ 
code
ÑÑ 
=
ÑÑ 
await
ÑÑ 
_userManager
ÑÑ )
.
ÑÑ) *1
#GenerateEmailConfirmationTokenAsync
ÑÑ* M
(
ÑÑM N
user
ÑÑN R
)
ÑÑR S
;
ÑÑS T
var
ÖÖ 
callbackUrl
ÖÖ 
=
ÖÖ 
Url
ÖÖ !
.
ÖÖ! "
Page
ÖÖ" &
(
ÖÖ& '
$str
ÜÜ '
,
ÜÜ' (
pageHandler
áá 
:
áá 
null
áá !
,
áá! "
values
àà 
:
àà 
new
àà 
{
àà 
userId
àà $
=
àà% &
userId
àà' -
,
àà- .
code
àà/ 3
=
àà4 5
code
àà6 :
}
àà; <
,
àà< =
protocol
ââ 
:
ââ 
Request
ââ !
.
ââ! "
Scheme
ââ" (
)
ââ( )
;
ââ) *
await
ää 
_emailSender
ää 
.
ää 
SendEmailAsync
ää -
(
ää- .
email
ãã 
,
ãã 
$str
åå $
,
åå$ %
$"
çç 6
(Please confirm your account by <a href='
çç :
{
çç: ;
HtmlEncoder
çç; F
.
ççF G
Default
ççG N
.
ççN O
Encode
ççO U
(
ççU V
callbackUrl
ççV a
)
çça b
}
ççb c"
'>clicking here</a>.
ççc w
"
ççw x
)
ççx y
;
ççy z
StatusMessage
èè 
=
èè 
$str
èè O
;
èèO P
return
êê 
RedirectToPage
êê !
(
êê! "
)
êê" #
;
êê# $
}
ëë 	
}
íí 
}ìì á
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
}## ˚
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
;? @
private 
readonly 
ILogger  
<  !
PersonalDataModel! 2
>2 3
_logger4 ;
;; <
public 
PersonalDataModel  
(  !
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
ILogger 
< 
PersonalDataModel %
>% &
logger' -
)- .
{ 	
_userManager 
= 
userManager &
;& '
_logger 
= 
logger 
; 
} 	
public 
async 
Task 
< 
IActionResult '
>' (
OnGet) .
(. /
)/ 0
{ 	
var 
user 
= 
await 
_userManager )
.) *
GetUserAsync* 6
(6 7
User7 ;
); <
;< =
if 
( 
user 
== 
null 
) 
{ 
return 
NotFound 
(  
$"  ")
Unable to load user with ID '" ?
{? @
_userManager@ L
.L M
	GetUserIdM V
(V W
UserW [
)[ \
}\ ]
'.] _
"_ `
)` a
;a b
} 
return 
Page 
( 
) 
; 
} 	
}   
}!! ﬂ#
ßE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\Manage\ResetAuthenticator.cshtml.cs
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
class #
ResetAuthenticatorModel (
:) *
	PageModel+ 4
{ 
UserManager 
< 
IdentityUser  
>  !
_userManager" .
;. /
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
ILogger 
< #
ResetAuthenticatorModel '
>' (
_logger) 0
;0 1
public #
ResetAuthenticatorModel &
(& '
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
,5 6
ILogger 
< #
ResetAuthenticatorModel +
>+ ,
logger- 3
)3 4
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
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
>' (
OnGet) .
(. /
)/ 0
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
}00 
await22 
_userManager22 
.22 $
SetTwoFactorEnabledAsync22 7
(227 8
user228 <
,22< =
false22> C
)22C D
;22D E
await33 
_userManager33 
.33 &
ResetAuthenticatorKeyAsync33 9
(339 :
user33: >
)33> ?
;33? @
_logger44 
.44 
LogInformation44 "
(44" #
$str44# d
,44d e
user44f j
.44j k
Id44k m
)44m n
;44n o
await66 
_signInManager66  
.66  !
RefreshSignInAsync66! 3
(663 4
user664 8
)668 9
;669 :
StatusMessage77 
=77 
$str	77 ç
;
77ç é
return99 
RedirectToPage99 !
(99! "
$str99" 9
)999 :
;99: ;
}:: 	
};; 
}<< ‘6
†E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\Manage\SetPassword.cshtml.cs
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
SetPasswordModel !
:" #
	PageModel$ -
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
SetPasswordModel 
(  
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
["" 
StringLength"" 
("" 
$num"" 
,"" 
ErrorMessage"" +
="", -
$str"". l
,""l m
MinimumLength""n {
=""| }
$num""~ 
)	"" Ä
]
""Ä Å
[## 
DataType## 
(## 
DataType## 
.## 
Password## '
)##' (
]##( )
[$$ 
Display$$ 
($$ 
Name$$ 
=$$ 
$str$$ *
)$$* +
]$$+ ,
public%% 
string%% 
NewPassword%% %
{%%& '
get%%( +
;%%+ ,
set%%- 0
;%%0 1
}%%2 3
['' 
DataType'' 
('' 
DataType'' 
.'' 
Password'' '
)''' (
]''( )
[(( 
Display(( 
((( 
Name(( 
=(( 
$str(( 2
)((2 3
]((3 4
[)) 
Compare)) 
()) 
$str)) "
,))" #
ErrorMessage))$ 0
=))1 2
$str))3 m
)))m n
]))n o
public** 
string** 
ConfirmPassword** )
{*** +
get**, /
;**/ 0
set**1 4
;**4 5
}**6 7
}++ 	
public-- 
async-- 
Task-- 
<-- 
IActionResult-- '
>--' (

OnGetAsync--) 3
(--3 4
)--4 5
{.. 	
var// 
user// 
=// 
await// 
_userManager// )
.//) *
GetUserAsync//* 6
(//6 7
User//7 ;
)//; <
;//< =
if00 
(00 
user00 
==00 
null00 
)00 
{11 
return22 
NotFound22 
(22  
$"22  ")
Unable to load user with ID '22" ?
{22? @
_userManager22@ L
.22L M
	GetUserId22M V
(22V W
User22W [
)22[ \
}22\ ]
'.22] _
"22_ `
)22` a
;22a b
}33 
var55 
hasPassword55 
=55 
await55 #
_userManager55$ 0
.550 1
HasPasswordAsync551 A
(55A B
user55B F
)55F G
;55G H
if77 
(77 
hasPassword77 
)77 
{88 
return99 
RedirectToPage99 %
(99% &
$str99& 8
)998 9
;999 :
}:: 
return<< 
Page<< 
(<< 
)<< 
;<< 
}== 	
public?? 
async?? 
Task?? 
<?? 
IActionResult?? '
>??' (
OnPostAsync??) 4
(??4 5
)??5 6
{@@ 	
ifAA 
(AA 
!AA 

ModelStateAA 
.AA 
IsValidAA #
)AA# $
{BB 
returnCC 
PageCC 
(CC 
)CC 
;CC 
}DD 
varFF 
userFF 
=FF 
awaitFF 
_userManagerFF )
.FF) *
GetUserAsyncFF* 6
(FF6 7
UserFF7 ;
)FF; <
;FF< =
ifGG 
(GG 
userGG 
==GG 
nullGG 
)GG 
{HH 
returnII 
NotFoundII 
(II  
$"II  ")
Unable to load user with ID 'II" ?
{II? @
_userManagerII@ L
.IIL M
	GetUserIdIIM V
(IIV W
UserIIW [
)II[ \
}II\ ]
'.II] _
"II_ `
)II` a
;IIa b
}JJ 
varLL 
addPasswordResultLL !
=LL" #
awaitLL$ )
_userManagerLL* 6
.LL6 7
AddPasswordAsyncLL7 G
(LLG H
userLLH L
,LLL M
InputLLN S
.LLS T
NewPasswordLLT _
)LL_ `
;LL` a
ifMM 
(MM 
!MM 
addPasswordResultMM "
.MM" #
	SucceededMM# ,
)MM, -
{NN 
foreachOO 
(OO 
varOO 
errorOO "
inOO# %
addPasswordResultOO& 7
.OO7 8
ErrorsOO8 >
)OO> ?
{PP 

ModelStateQQ 
.QQ 
AddModelErrorQQ ,
(QQ, -
stringQQ- 3
.QQ3 4
EmptyQQ4 9
,QQ9 :
errorQQ; @
.QQ@ A
DescriptionQQA L
)QQL M
;QQM N
}RR 
returnSS 
PageSS 
(SS 
)SS 
;SS 
}TT 
awaitVV 
_signInManagerVV  
.VV  !
RefreshSignInAsyncVV! 3
(VV3 4
userVV4 8
)VV8 9
;VV9 :
StatusMessageWW 
=WW 
$strWW 9
;WW9 :
returnYY 
RedirectToPageYY !
(YY! "
)YY" #
;YY# $
}ZZ 	
}[[ 
}\\ π-
¨E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\Manage\TwoFactorAuthentication.cshtml.cs
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
class (
TwoFactorAuthenticationModel -
:. /
	PageModel0 9
{ 
private 
const 
string !
AuthenicatorUriFormat 2
=3 4
$str5 c
;c d
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
private 
readonly 
SignInManager &
<& '
IdentityUser' 3
>3 4
_signInManager5 C
;C D
private 
readonly 
ILogger  
<  !(
TwoFactorAuthenticationModel! =
>= >
_logger? F
;F G
public (
TwoFactorAuthenticationModel +
(+ ,
UserManager 
< 
IdentityUser $
>$ %
userManager& 1
,1 2
SignInManager 
< 
IdentityUser &
>& '
signInManager( 5
,5 6
ILogger 
< (
TwoFactorAuthenticationModel 0
>0 1
logger2 8
)8 9
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
public 
bool 
HasAuthenticator $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public   
int   
RecoveryCodesLeft   $
{  % &
get  ' *
;  * +
set  , /
;  / 0
}  1 2
["" 	
BindProperty""	 
]"" 
public## 
bool## 
Is2faEnabled##  
{##! "
get### &
;##& '
set##( +
;##+ ,
}##- .
public%% 
bool%% 
IsMachineRemembered%% '
{%%( )
get%%* -
;%%- .
set%%/ 2
;%%2 3
}%%4 5
['' 	
TempData''	 
]'' 
public(( 
string(( 
StatusMessage(( #
{(($ %
get((& )
;(() *
set((+ .
;((. /
}((0 1
public** 
async** 
Task** 
<** 
IActionResult** '
>**' (
OnGet**) .
(**. /
)**/ 0
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
}00 
HasAuthenticator22 
=22 
await22 $
_userManager22% 1
.221 2$
GetAuthenticatorKeyAsync222 J
(22J K
user22K O
)22O P
!=22Q S
null22T X
;22X Y
Is2faEnabled33 
=33 
await33  
_userManager33! -
.33- .$
GetTwoFactorEnabledAsync33. F
(33F G
user33G K
)33K L
;33L M
IsMachineRemembered44 
=44  !
await44" '
_signInManager44( 6
.446 7,
 IsTwoFactorClientRememberedAsync447 W
(44W X
user44X \
)44\ ]
;44] ^
RecoveryCodesLeft55 
=55 
await55  %
_userManager55& 2
.552 3#
CountRecoveryCodesAsync553 J
(55J K
user55K O
)55O P
;55P Q
return77 
Page77 
(77 
)77 
;77 
}88 	
public:: 
async:: 
Task:: 
<:: 
IActionResult:: '
>::' (
OnPost::) /
(::/ 0
)::0 1
{;; 	
var<< 
user<< 
=<< 
await<< 
_userManager<< )
.<<) *
GetUserAsync<<* 6
(<<6 7
User<<7 ;
)<<; <
;<<< =
if== 
(== 
user== 
==== 
null== 
)== 
{>> 
return?? 
NotFound?? 
(??  
$"??  ")
Unable to load user with ID '??" ?
{??? @
_userManager??@ L
.??L M
	GetUserId??M V
(??V W
User??W [
)??[ \
}??\ ]
'.??] _
"??_ `
)??` a
;??a b
}@@ 
awaitBB 
_signInManagerBB  
.BB  !&
ForgetTwoFactorClientAsyncBB! ;
(BB; <
)BB< =
;BB= >
StatusMessageCC 
=CC 
$str	CC î
;
CCî ï
returnDD 
RedirectToPageDD !
(DD! "
)DD" #
;DD# $
}EE 	
}FF 
}GG ªJ
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
;RR" #
intSS 
recordsAffectedSS +
=SS, -
command2SS. 6
.SS6 7
ExecuteNonQuerySS7 F
(SSF G
)SSG H
;SSH I
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
;]]" #
int^^ 
recordsAffected^^ +
=^^, -
command3^^. 6
.^^6 7
ExecuteNonQuery^^7 F
(^^F G
)^^G H
;^^H I
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
{ 
[ 
AllowAnonymous 
] 
public 

class 
ResetPasswordModel #
:$ %
	PageModel& /
{ 
private 
readonly 
UserManager $
<$ %
IdentityUser% 1
>1 2
_userManager3 ?
;? @
public 
ResetPasswordModel !
(! "
UserManager" -
<- .
IdentityUser. :
>: ;
userManager< G
)G H
{ 	
_userManager 
= 
userManager &
;& '
} 	
[ 	
BindProperty	 
] 
public 

InputModel 
Input 
{  !
get" %
;% &
set' *
;* +
}, -
public 
class 

InputModel 
{ 	
[ 
Required 
] 
[ 
EmailAddress 
] 
public 
string 
Email 
{  !
get" %
;% &
set' *
;* +
}, -
[   
Required   
]   
[!! 
StringLength!! 
(!! 
$num!! 
,!! 
ErrorMessage!! +
=!!, -
$str!!. l
,!!l m
MinimumLength!!n {
=!!| }
$num!!~ 
)	!! Ä
]
!!Ä Å
["" 
DataType"" 
("" 
DataType"" 
."" 
Password"" '
)""' (
]""( )
public## 
string## 
Password## "
{### $
get##% (
;##( )
set##* -
;##- .
}##/ 0
[%% 
DataType%% 
(%% 
DataType%% 
.%% 
Password%% '
)%%' (
]%%( )
[&& 
Display&& 
(&& 
Name&& 
=&& 
$str&& .
)&&. /
]&&/ 0
['' 
Compare'' 
('' 
$str'' 
,''  
ErrorMessage''! -
=''. /
$str''0 f
)''f g
]''g h
public(( 
string(( 
ConfirmPassword(( )
{((* +
get((, /
;((/ 0
set((1 4
;((4 5
}((6 7
public** 
string** 
Code** 
{**  
get**! $
;**$ %
set**& )
;**) *
}**+ ,
}++ 	
public-- 
IActionResult-- 
OnGet-- "
(--" #
string--# )
code--* .
=--/ 0
null--1 5
)--5 6
{.. 	
if// 
(// 
code// 
==// 
null// 
)// 
{00 
return11 

BadRequest11 !
(11! "
$str11" O
)11O P
;11P Q
}22 
else33 
{44 
Input55 
=55 
new55 

InputModel55 &
{66 
Code77 
=77 
code77 
}88 
;88 
return99 
Page99 
(99 
)99 
;99 
}:: 
};; 	
public== 
async== 
Task== 
<== 
IActionResult== '
>==' (
OnPostAsync==) 4
(==4 5
)==5 6
{>> 	
if?? 
(?? 
!?? 

ModelState?? 
.?? 
IsValid?? #
)??# $
{@@ 
returnAA 
PageAA 
(AA 
)AA 
;AA 
}BB 
varDD 
userDD 
=DD 
awaitDD 
_userManagerDD )
.DD) *
FindByEmailAsyncDD* :
(DD: ;
InputDD; @
.DD@ A
EmailDDA F
)DDF G
;DDG H
ifEE 
(EE 
userEE 
==EE 
nullEE 
)EE 
{FF 
returnHH 
RedirectToPageHH %
(HH% &
$strHH& C
)HHC D
;HHD E
}II 
varKK 
resultKK 
=KK 
awaitKK 
_userManagerKK +
.KK+ ,
ResetPasswordAsyncKK, >
(KK> ?
userKK? C
,KKC D
InputKKE J
.KKJ K
CodeKKK O
,KKO P
InputKKQ V
.KKV W
PasswordKKW _
)KK_ `
;KK` a
ifLL 
(LL 
resultLL 
.LL 
	SucceededLL  
)LL  !
{MM 
returnNN 
RedirectToPageNN %
(NN% &
$strNN& C
)NNC D
;NND E
}OO 
foreachQQ 
(QQ 
varQQ 
errorQQ 
inQQ !
resultQQ" (
.QQ( )
ErrorsQQ) /
)QQ/ 0
{RR 

ModelStateSS 
.SS 
AddModelErrorSS (
(SS( )
stringSS) /
.SS/ 0
EmptySS0 5
,SS5 6
errorSS7 <
.SS< =
DescriptionSS= H
)SSH I
;SSI J
}TT 
returnUU 
PageUU 
(UU 
)UU 
;UU 
}VV 	
}WW 
}XX ‘
ßE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Areas\Identity\Pages\Account\ResetPasswordConfirmation.cshtml.cs
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
class *
ResetPasswordConfirmationModel /
:0 1
	PageModel2 ;
{ 
public 
void 
OnGet 
( 
) 
{ 	
} 	
} 
} º
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
} ¨O
äE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Controllers\CategoriesController.cs
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
.$ %
Controllers% 0
{ 
[ 
	Authorize 
( 
Roles 
= 
$str 
) 
]  
public 

class  
CategoriesController %
:& '

Controller( 2
{ 
private 
readonly 
EcommerceContext )
_context* 2
;2 3
public  
CategoriesController #
(# $
EcommerceContext$ 4
context5 <
)< =
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
IActionResult '
>' (
Index) .
(. /
)/ 0
{ 	
return 
View 
( 
await 
_context &
.& '
Category' /
./ 0
ToListAsync0 ;
(; <
)< =
)= >
;> ?
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
(   
id   
==   
null   
)   
{!! 
return"" 
NotFound"" 
(""  
)""  !
;""! "
}## 
var%% 
category%% 
=%% 
await%%  
_context%%! )
.%%) *
Category%%* 2
.&& 
FirstOrDefaultAsync&& $
(&&$ %
m&&% &
=>&&' )
m&&* +
.&&+ ,

CategoryId&&, 6
==&&7 9
id&&: <
)&&< =
;&&= >
if'' 
('' 
category'' 
=='' 
null''  
)''  !
{(( 
return)) 
NotFound)) 
())  
)))  !
;))! "
}** 
return,, 
View,, 
(,, 
category,,  
),,  !
;,,! "
}-- 	
[.. 	
	Authorize..	 
(.. 
Roles.. 
=.. 
$str.. "
).." #
]..# $
public00 
IActionResult00 
Create00 #
(00# $
)00$ %
{11 	
return22 
View22 
(22 
)22 
;22 
}33 	
[44 	
	Authorize44	 
(44 
Roles44 
=44 
$str44 "
)44" #
]44# $
[88 	
HttpPost88	 
]88 
[99 	$
ValidateAntiForgeryToken99	 !
]99! "
public:: 
async:: 
Task:: 
<:: 
IActionResult:: '
>::' (
Create::) /
(::/ 0
[::0 1
Bind::1 5
(::5 6
$str::6 D
)::D E
]::E F
Category::G O
category::P X
)::X Y
{;; 	
if<< 
(<< 

ModelState<< 
.<< 
IsValid<< "
)<<" #
{== 
category>> 
.>> 

CategoryId>> #
=>>$ %
Guid>>& *
.>>* +
NewGuid>>+ 2
(>>2 3
)>>3 4
.>>4 5
ToString>>5 =
(>>= >
)>>> ?
;>>? @
_context?? 
.?? 
Add?? 
(?? 
category?? %
)??% &
;??& '
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
}BB 
returnCC 
ViewCC 
(CC 
categoryCC  
)CC  !
;CC! "
}DD 	
publicGG 
asyncGG 
TaskGG 
<GG 
IActionResultGG '
>GG' (
EditGG) -
(GG- .
stringGG. 4
idGG5 7
)GG7 8
{HH 	
ifII 
(II 
idII 
==II 
nullII 
)II 
{JJ 
returnKK 
NotFoundKK 
(KK  
)KK  !
;KK! "
}LL 
varNN 
categoryNN 
=NN 
awaitNN  
_contextNN! )
.NN) *
CategoryNN* 2
.NN2 3
	FindAsyncNN3 <
(NN< =
idNN= ?
)NN? @
;NN@ A
ifOO 
(OO 
categoryOO 
==OO 
nullOO  
)OO  !
{PP 
returnQQ 
NotFoundQQ 
(QQ  
)QQ  !
;QQ! "
}RR 
returnSS 
ViewSS 
(SS 
categorySS  
)SS  !
;SS! "
}TT 	
[YY 	
HttpPostYY	 
]YY 
[ZZ 	$
ValidateAntiForgeryTokenZZ	 !
]ZZ! "
public[[ 
async[[ 
Task[[ 
<[[ 
IActionResult[[ '
>[[' (
Edit[[) -
([[- .
string[[. 4
id[[5 7
,[[7 8
[[[9 :
Bind[[: >
([[> ?
$str[[? X
)[[X Y
][[Y Z
Category[[[ c
category[[d l
)[[l m
{\\ 	
if]] 
(]] 
id]] 
!=]] 
category]] 
.]] 

CategoryId]] )
)]]) *
{^^ 
return__ 
NotFound__ 
(__  
)__  !
;__! "
}`` 
ifbb 
(bb 

ModelStatebb 
.bb 
IsValidbb "
)bb" #
{cc 
trydd 
{ee 
_contextff 
.ff 
Updateff #
(ff# $
categoryff$ ,
)ff, -
;ff- .
awaitgg 
_contextgg "
.gg" #
SaveChangesAsyncgg# 3
(gg3 4
)gg4 5
;gg5 6
}hh 
catchii 
(ii (
DbUpdateConcurrencyExceptionii 3
)ii3 4
{jj 
ifkk 
(kk 
!kk 
CategoryExistskk '
(kk' (
categorykk( 0
.kk0 1

CategoryIdkk1 ;
)kk; <
)kk< =
{ll 
returnmm 
NotFoundmm '
(mm' (
)mm( )
;mm) *
}nn 
elseoo 
{pp 
throwqq 
;qq 
}rr 
}ss 
returntt 
RedirectToActiontt '
(tt' (
nameoftt( .
(tt. /
Indextt/ 4
)tt4 5
)tt5 6
;tt6 7
}uu 
returnvv 
Viewvv 
(vv 
categoryvv  
)vv  !
;vv! "
}ww 	
publiczz 
asynczz 
Taskzz 
<zz 
IActionResultzz '
>zz' (
Deletezz) /
(zz/ 0
stringzz0 6
idzz7 9
)zz9 :
{{{ 	
if|| 
(|| 
id|| 
==|| 
null|| 
)|| 
{}} 
return~~ 
NotFound~~ 
(~~  
)~~  !
;~~! "
} 
var
ÅÅ 
category
ÅÅ 
=
ÅÅ 
await
ÅÅ  
_context
ÅÅ! )
.
ÅÅ) *
Category
ÅÅ* 2
.
ÇÇ !
FirstOrDefaultAsync
ÇÇ $
(
ÇÇ$ %
m
ÇÇ% &
=>
ÇÇ' )
m
ÇÇ* +
.
ÇÇ+ ,

CategoryId
ÇÇ, 6
==
ÇÇ7 9
id
ÇÇ: <
)
ÇÇ< =
;
ÇÇ= >
if
ÉÉ 
(
ÉÉ 
category
ÉÉ 
==
ÉÉ 
null
ÉÉ  
)
ÉÉ  !
{
ÑÑ 
return
ÖÖ 
NotFound
ÖÖ 
(
ÖÖ  
)
ÖÖ  !
;
ÖÖ! "
}
ÜÜ 
return
àà 
View
àà 
(
àà 
category
àà  
)
àà  !
;
àà! "
}
ââ 	
[
åå 	
HttpPost
åå	 
,
åå 

ActionName
åå 
(
åå 
$str
åå &
)
åå& '
]
åå' (
[
çç 	&
ValidateAntiForgeryToken
çç	 !
]
çç! "
public
éé 
async
éé 
Task
éé 
<
éé 
IActionResult
éé '
>
éé' (
DeleteConfirmed
éé) 8
(
éé8 9
string
éé9 ?
id
éé@ B
)
ééB C
{
èè 	
var
êê 
category
êê 
=
êê 
await
êê  
_context
êê! )
.
êê) *
Category
êê* 2
.
êê2 3
	FindAsync
êê3 <
(
êê< =
id
êê= ?
)
êê? @
;
êê@ A
_context
ëë 
.
ëë 
Category
ëë 
.
ëë 
Remove
ëë $
(
ëë$ %
category
ëë% -
)
ëë- .
;
ëë. /
await
íí 
_context
íí 
.
íí 
SaveChangesAsync
íí +
(
íí+ ,
)
íí, -
;
íí- .
return
ìì 
RedirectToAction
ìì #
(
ìì# $
nameof
ìì$ *
(
ìì* +
Index
ìì+ 0
)
ìì0 1
)
ìì1 2
;
ìì2 3
}
îî 	
private
ññ 
bool
ññ 
CategoryExists
ññ #
(
ññ# $
string
ññ$ *
id
ññ+ -
)
ññ- .
{
óó 	
return
òò 
_context
òò 
.
òò 
Category
òò $
.
òò$ %
Any
òò% (
(
òò( )
e
òò) *
=>
òò+ -
e
òò. /
.
òò/ 0

CategoryId
òò0 :
==
òò; =
id
òò> @
)
òò@ A
;
òòA B
}
ôô 	
}
öö 
}õõ ¸
ÑE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Controllers\HomeController.cs
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
class 
HomeController 
:  !

Controller" ,
{ 
public 
IActionResult 
Index "
(" #
)# $
{ 	
return 
View 
( 
) 
; 
} 	
public 
IActionResult 
Privacy $
($ %
)% &
{ 	
return 
View 
( 
) 
; 
} 	
[ 	
ResponseCache	 
( 
Duration 
=  !
$num" #
,# $
Location% -
=. /!
ResponseCacheLocation0 E
.E F
NoneF J
,J K
NoStoreL S
=T U
trueV Z
)Z [
][ \
public 
IActionResult 
Error "
(" #
)# $
{ 	
return 
View 
( 
new 
ErrorViewModel *
{+ ,
	RequestId- 6
=7 8
Activity9 A
.A B
CurrentB I
?I J
.J K
IdK M
??N P
HttpContextQ \
.\ ]
TraceIdentifier] l
}m n
)n o
;o p
} 	
} 
} ∏¡
ÜE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Controllers\OrdersController.cs
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
.$ %
Controllers% 0
{ 
[ 
	Authorize 
( 
Roles 
= 
$str "
)" #
]# $
public 

class 
OrdersController !
:" #

Controller$ .
{ 
private 
readonly 
EcommerceContext )
_context* 2
;2 3
private 
readonly  
IHttpContextAccessor - 
_httpContextAccessor. B
;B C
public 
OrdersController 
(  
EcommerceContext  0
context1 8
,8 9 
IHttpContextAccessor: N
httpContextAccessorO b
)b c
{ 	
_context 
= 
context 
;  
_httpContextAccessor  
=! "
httpContextAccessor# 6
;6 7
} 	
public 
async 
Task 
< 
IActionResult '
>' (
Index) .
(. /
)/ 0
{ 	
var 
currentClientRole !
=" # 
_httpContextAccessor$ 8
.8 9
HttpContext9 D
.D E
UserE I
.I J
	FindFirstJ S
(S T

ClaimTypesT ^
.^ _
Role_ c
)c d
.d e
Valuee j
;j k
if   
(   
currentClientRole   !
==  " $
$str  % ,
)  , -
{!! 

IQueryable"" 
<"" 
Order""  
>""  !
ecommerceContext""" 2
=""3 4
null""5 9
;""9 :
ecommerceContext##  
=##! "
_context### +
.##+ ,
Order##, 1
.##1 2
Include##2 9
(##9 :
o##: ;
=>##< >
o##? @
.##@ A
Client##A G
)##G H
.##H I
Include##I P
(##P Q
p##Q R
=>##S U
p##V W
.##W X
ProductOrder##X d
)##d e
.##e f
ThenInclude##f q
(##q r
x##r s
=>##t v
x##w x
.##x y"
ProductIdFkNavigation	##y é
)
##é è
.
##è ê
Where
##ê ï
(
##ï ñ
z
##ñ ó
=>
##ò ö
z
##õ ú
.
##ú ù
HasBeenPlaced
##ù ™
==
##´ ≠
$num
##Æ Ø
&&
##∞ ≤
z
##≥ ¥
.
##¥ µ
HasBeenConfirmed
##µ ≈
.
##≈ ∆
Contains
##∆ Œ
(
##Œ œ
$str
##œ “
)
##“ ”
)
##” ‘
.
##‘ ’
OrderBy
##’ ‹
(
##‹ ›
s
##› ﬁ
=>
##ﬂ ·
s
##‚ „
.
##„ ‰
HasBeenConfirmed
##‰ Ù
)
##Ù ı
;
##ı ˆ
return$$ 
View$$ 
($$ 
await$$ !
ecommerceContext$$" 2
.$$2 3
ToListAsync$$3 >
($$> ?
)$$? @
)$$@ A
;$$A B
}%% 
else&& 
{'' 

IQueryable(( 
<(( 
Order((  
>((  !
ecommerceContext((" 2
=((3 4
null((5 9
;((9 :
var)) 
currentClient)) !
=))" # 
_httpContextAccessor))$ 8
.))8 9
HttpContext))9 D
.))D E
User))E I
.))I J
	FindFirst))J S
())S T

ClaimTypes))T ^
.))^ _
NameIdentifier))_ m
)))m n
.))n o
Value))o t
;))t u
ecommerceContext**  
=**! "
_context**# +
.**+ ,
Order**, 1
.**1 2
Include**2 9
(**9 :
o**: ;
=>**< >
o**? @
.**@ A
Client**A G
)**G H
.**H I
Include**I P
(**P Q
p**Q R
=>**S U
p**V W
.**W X
ProductOrder**X d
)**d e
.**e f
ThenInclude**f q
(**q r
x**r s
=>**t v
x**w x
.**x y"
ProductIdFkNavigation	**y é
)
**é è
.
**è ê
Where
**ê ï
(
**ï ñ
y
**ñ ó
=>
**ò ö
y
**õ ú
.
**ú ù
ClientId
**ù •
==
**¶ ®
currentClient
**© ∂
)
**∂ ∑
.
**∑ ∏
Where
**∏ Ω
(
**Ω æ
z
**æ ø
=>
**¿ ¬
z
**√ ƒ
.
**ƒ ≈
HasBeenPlaced
**≈ “
==
**” ’
$num
**÷ ◊
)
**◊ ÿ
.
**ÿ Ÿ
OrderBy
**Ÿ ‡
(
**‡ ·
s
**· ‚
=>
**„ Â
s
**Ê Á
.
**Á Ë
HasBeenConfirmed
**Ë ¯
)
**¯ ˘
;
**˘ ˙
return++ 
View++ 
(++ 
await++ !
ecommerceContext++" 2
.++2 3
ToListAsync++3 >
(++> ?
)++? @
)++@ A
;++A B
},, 
}-- 	
[00 	

ActionName00	 
(00 
$str00 !
)00! "
]00" #
public11 
async11 
Task11 
<11 
IActionResult11 '
>11' (
IndexBasket11) 4
(114 5
)115 6
{22 	
var33 
currentClientRole33 !
=33" # 
_httpContextAccessor33$ 8
.338 9
HttpContext339 D
.33D E
User33E I
.33I J
	FindFirst33J S
(33S T

ClaimTypes33T ^
.33^ _
Role33_ c
)33c d
.33d e
Value33e j
;33j k
if44 
(44 
currentClientRole44 !
==44" $
$str44% ,
)44, -
{55 

IQueryable66 
<66 
Order66  
>66  !
ecommerceContext66" 2
=663 4
null665 9
;669 :
ecommerceContext77  
=77! "
_context77# +
.77+ ,
Order77, 1
.771 2
Include772 9
(779 :
o77: ;
=>77< >
o77? @
.77@ A
Client77A G
)77G H
.77H I
Include77I P
(77P Q
p77Q R
=>77S U
p77V W
.77W X
ProductOrder77X d
)77d e
.77e f
ThenInclude77f q
(77q r
x77r s
=>77t v
x77w x
.77x y"
ProductIdFkNavigation	77y é
)
77é è
.
77è ê
Where
77ê ï
(
77ï ñ
z
77ñ ó
=>
77ò ö
z
77õ ú
.
77ú ù
HasBeenPlaced
77ù ™
==
77´ ≠
$num
77Æ Ø
)
77Ø ∞
;
77∞ ±
return88 
View88 
(88 
await88 !
ecommerceContext88" 2
.882 3
ToListAsync883 >
(88> ?
)88? @
)88@ A
;88A B
}99 
else:: 
{;; 

IQueryable<< 
<<< 
Order<<  
><<  !
ecommerceContext<<" 2
=<<3 4
null<<5 9
;<<9 :
var== 
currentClient== !
===" # 
_httpContextAccessor==$ 8
.==8 9
HttpContext==9 D
.==D E
User==E I
.==I J
	FindFirst==J S
(==S T

ClaimTypes==T ^
.==^ _
NameIdentifier==_ m
)==m n
.==n o
Value==o t
;==t u
ecommerceContext>>  
=>>! "
_context>># +
.>>+ ,
Order>>, 1
.>>1 2
Include>>2 9
(>>9 :
o>>: ;
=>>>< >
o>>? @
.>>@ A
Client>>A G
)>>G H
.>>H I
Include>>I P
(>>P Q
p>>Q R
=>>>S U
p>>V W
.>>W X
ProductOrder>>X d
)>>d e
.>>e f
ThenInclude>>f q
(>>q r
x>>r s
=>>>t v
x>>w x
.>>x y"
ProductIdFkNavigation	>>y é
)
>>é è
.
>>è ê
Where
>>ê ï
(
>>ï ñ
y
>>ñ ó
=>
>>ò ö
y
>>õ ú
.
>>ú ù
ClientId
>>ù •
==
>>¶ ®
currentClient
>>© ∂
)
>>∂ ∑
.
>>∑ ∏
Where
>>∏ Ω
(
>>Ω æ
z
>>æ ø
=>
>>¿ ¬
z
>>√ ƒ
.
>>ƒ ≈
HasBeenPlaced
>>≈ “
==
>>” ’
$num
>>÷ ◊
)
>>◊ ÿ
;
>>ÿ Ÿ
return?? 
View?? 
(?? 
await?? !
ecommerceContext??" 2
.??2 3
ToListAsync??3 >
(??> ?
)??? @
)??@ A
;??A B
}@@ 
}AA 	
publicDD 
asyncDD 
TaskDD 
<DD 
IActionResultDD '
>DD' (
DetailsDD) 0
(DD0 1
stringDD1 7
idDD8 :
)DD: ;
{EE 	
ifFF 
(FF 
idFF 
==FF 
nullFF 
)FF 
{GG 
returnHH 
NotFoundHH 
(HH  
)HH  !
;HH! "
}II 
varKK 
orderKK 
=KK 
awaitKK 
_contextKK &
.KK& '
OrderKK' ,
.LL 
IncludeLL 
(LL 
oLL 
=>LL 
oLL 
.LL  
ClientLL  &
)LL& '
.MM 
FirstOrDefaultAsyncMM $
(MM$ %
mMM% &
=>MM' )
mMM* +
.MM+ ,
OrderIdMM, 3
==MM4 6
idMM7 9
)MM9 :
;MM: ;
ifNN 
(NN 
orderNN 
==NN 
nullNN 
)NN 
{OO 
returnPP 
NotFoundPP 
(PP  
)PP  !
;PP! "
}QQ 
returnSS 
ViewSS 
(SS 
orderSS 
)SS 
;SS 
}TT 	
publicWW 
IActionResultWW 
CreateWW #
(WW# $
)WW$ %
{XX 	
ViewDataYY 
[YY 
$strYY 
]YY  
=YY! "
newYY# &

SelectListYY' 1
(YY1 2
_contextYY2 :
.YY: ;
UserYY; ?
,YY? @
$strYYA E
,YYE F
$strYYG K
)YYK L
;YYL M
returnZZ 
ViewZZ 
(ZZ 
)ZZ 
;ZZ 
}[[ 	
[`` 	
HttpPost``	 
]`` 
[aa 	$
ValidateAntiForgeryTokenaa	 !
]aa! "
publicbb 
asyncbb 
Taskbb 
<bb 
IActionResultbb '
>bb' (
Createbb) /
(bb/ 0
[bb0 1
Bindbb1 5
(bb5 6
$strbb6 W
)bbW X
]bbX Y
OrderbbZ _
orderbb` e
)bbe f
{cc 	
ifdd 
(dd 

ModelStatedd 
.dd 
IsValiddd "
)dd" #
{ee 
orderff 
.ff 
OrderIdff 
=ff 
Guidff  $
.ff$ %
NewGuidff% ,
(ff, -
)ff- .
.ff. /
ToStringff/ 7
(ff7 8
)ff8 9
;ff9 :
ordergg 
.gg 
HasBeenPlacedgg #
=gg$ %
$numgg& '
;gg' (
orderhh 
.hh 
HasBeenConfirmedhh &
=hh' (
$strhh) ,
;hh, -
_contextii 
.ii 
Addii 
(ii 
orderii "
)ii" #
;ii# $
awaitjj 
_contextjj 
.jj 
SaveChangesAsyncjj /
(jj/ 0
)jj0 1
;jj1 2
returnkk 
RedirectToActionkk '
(kk' (
nameofkk( .
(kk. /
Indexkk/ 4
)kk4 5
)kk5 6
;kk6 7
}ll 
ViewDatamm 
[mm 
$strmm 
]mm  
=mm! "
newmm# &

SelectListmm' 1
(mm1 2
_contextmm2 :
.mm: ;
Usermm; ?
,mm? @
$strmmA E
,mmE F
$strmmG K
,mmK L
ordermmM R
.mmR S
ClientIdmmS [
)mm[ \
;mm\ ]
returnnn 
Viewnn 
(nn 
ordernn 
)nn 
;nn 
}oo 	
publicrr 
asyncrr 
Taskrr 
<rr 
IActionResultrr '
>rr' (
Editrr) -
(rr- .
stringrr. 4
idrr5 7
)rr7 8
{ss 	
iftt 
(tt 
idtt 
==tt 
nulltt 
)tt 
{uu 
returnvv 
NotFoundvv 
(vv  
)vv  !
;vv! "
}ww 
varyy 
orderyy 
=yy 
awaityy 
_contextyy &
.yy& '
Orderyy' ,
.yy, -
	FindAsyncyy- 6
(yy6 7
idyy7 9
)yy9 :
;yy: ;
ifzz 
(zz 
orderzz 
==zz 
nullzz 
)zz 
{{{ 
return|| 
NotFound|| 
(||  
)||  !
;||! "
}}} 
ViewData~~ 
[~~ 
$str~~ 
]~~  
=~~! "
new~~# &

SelectList~~' 1
(~~1 2
_context~~2 :
.~~: ;
User~~; ?
,~~? @
$str~~A E
,~~E F
$str~~G K
,~~K L
order~~M R
.~~R S
ClientId~~S [
)~~[ \
;~~\ ]
return 
View 
( 
order 
) 
; 
}
ÄÄ 	
[
ÖÖ 	
HttpPost
ÖÖ	 
]
ÖÖ 
[
ÜÜ 	&
ValidateAntiForgeryToken
ÜÜ	 !
]
ÜÜ! "
public
áá 
async
áá 
Task
áá 
<
áá 
IActionResult
áá '
>
áá' (
Edit
áá) -
(
áá- .
string
áá. 4
id
áá5 7
,
áá7 8
[
áá9 :
Bind
áá: >
(
áá> ?
$str
áá? _
)
áá_ `
]
áá` a
Order
ááb g
order
ááh m
)
áám n
{
àà 	
if
ââ 
(
ââ 
id
ââ 
!=
ââ 
order
ââ 
.
ââ 
OrderId
ââ #
)
ââ# $
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
åå 
if
éé 
(
éé 

ModelState
éé 
.
éé 
IsValid
éé "
)
éé" #
{
èè 
try
êê 
{
ëë 
_context
íí 
.
íí 
Update
íí #
(
íí# $
order
íí$ )
)
íí) *
;
íí* +
await
ìì 
_context
ìì "
.
ìì" #
SaveChangesAsync
ìì# 3
(
ìì3 4
)
ìì4 5
;
ìì5 6
}
îî 
catch
ïï 
(
ïï *
DbUpdateConcurrencyException
ïï 3
)
ïï3 4
{
ññ 
if
óó 
(
óó 
!
óó 
OrderExists
óó $
(
óó$ %
order
óó% *
.
óó* +
OrderId
óó+ 2
)
óó2 3
)
óó3 4
{
òò 
return
ôô 
NotFound
ôô '
(
ôô' (
)
ôô( )
;
ôô) *
}
öö 
else
õõ 
{
úú 
throw
ùù 
;
ùù 
}
ûû 
}
üü 
return
†† 
RedirectToAction
†† '
(
††' (
nameof
††( .
(
††. /
Index
††/ 4
)
††4 5
)
††5 6
;
††6 7
}
°° 
ViewData
¢¢ 
[
¢¢ 
$str
¢¢ 
]
¢¢  
=
¢¢! "
new
¢¢# &

SelectList
¢¢' 1
(
¢¢1 2
_context
¢¢2 :
.
¢¢: ;
User
¢¢; ?
,
¢¢? @
$str
¢¢A E
,
¢¢E F
$str
¢¢G K
,
¢¢K L
order
¢¢M R
.
¢¢R S
ClientId
¢¢S [
)
¢¢[ \
;
¢¢\ ]
return
££ 
View
££ 
(
££ 
order
££ 
)
££ 
;
££ 
}
§§ 	
public
ßß 
async
ßß 
Task
ßß 
<
ßß 
IActionResult
ßß '
>
ßß' (
Delete
ßß) /
(
ßß/ 0
string
ßß0 6
id
ßß7 9
)
ßß9 :
{
®® 	
if
©© 
(
©© 
id
©© 
==
©© 
null
©© 
)
©© 
{
™™ 
return
´´ 
NotFound
´´ 
(
´´  
)
´´  !
;
´´! "
}
¨¨ 
var
ÆÆ 
order
ÆÆ 
=
ÆÆ 
await
ÆÆ 
_context
ÆÆ &
.
ÆÆ& '
Order
ÆÆ' ,
.
ØØ 
Include
ØØ 
(
ØØ 
o
ØØ 
=>
ØØ 
o
ØØ 
.
ØØ  
Client
ØØ  &
)
ØØ& '
.
∞∞ !
FirstOrDefaultAsync
∞∞ $
(
∞∞$ %
m
∞∞% &
=>
∞∞' )
m
∞∞* +
.
∞∞+ ,
OrderId
∞∞, 3
==
∞∞4 6
id
∞∞7 9
)
∞∞9 :
;
∞∞: ;
if
±± 
(
±± 
order
±± 
==
±± 
null
±± 
)
±± 
{
≤≤ 
return
≥≥ 
NotFound
≥≥ 
(
≥≥  
)
≥≥  !
;
≥≥! "
}
¥¥ 
return
∂∂ 
View
∂∂ 
(
∂∂ 
order
∂∂ 
)
∂∂ 
;
∂∂ 
}
∑∑ 	
[
∫∫ 	
HttpPost
∫∫	 
,
∫∫ 

ActionName
∫∫ 
(
∫∫ 
$str
∫∫ &
)
∫∫& '
]
∫∫' (
[
ªª 	&
ValidateAntiForgeryToken
ªª	 !
]
ªª! "
public
ºº 
async
ºº 
Task
ºº 
<
ºº 
IActionResult
ºº '
>
ºº' (
DeleteConfirmed
ºº) 8
(
ºº8 9
string
ºº9 ?
id
ºº@ B
)
ººB C
{
ΩΩ 	
var
ææ 
order
ææ 
=
ææ 
await
ææ 
_context
ææ &
.
ææ& '
Order
ææ' ,
.
ææ, -
	FindAsync
ææ- 6
(
ææ6 7
id
ææ7 9
)
ææ9 :
;
ææ: ;
order
øø 
.
øø 
HasBeenConfirmed
øø "
=
øø# $
$str
øø% (
;
øø( )
order
¿¿ 
.
¿¿ 
HasBeenPlaced
¿¿ 
=
¿¿  !
$num
¿¿" #
;
¿¿# $
await
¡¡ 
_context
¡¡ 
.
¡¡ 
SaveChangesAsync
¡¡ +
(
¡¡+ ,
)
¡¡, -
;
¡¡- .
return
¬¬ 
RedirectToAction
¬¬ #
(
¬¬# $
nameof
¬¬$ *
(
¬¬* +
IndexBasket
¬¬+ 6
)
¬¬6 7
)
¬¬7 8
;
¬¬8 9
}
√√ 	
private
≈≈ 
bool
≈≈ 
OrderExists
≈≈  
(
≈≈  !
string
≈≈! '
id
≈≈( *
)
≈≈* +
{
∆∆ 	
return
«« 
_context
«« 
.
«« 
Order
«« !
.
««! "
Any
««" %
(
««% &
e
««& '
=>
««( *
e
««+ ,
.
««, -
OrderId
««- 4
==
««5 7
id
««8 :
)
««: ;
;
««; <
}
»» 	
[
   	

ActionName
  	 
(
   
$str
   "
)
  " #
]
  # $
public
ÀÀ 
async
ÀÀ 
Task
ÀÀ 
<
ÀÀ 
IActionResult
ÀÀ '
>
ÀÀ' (
ConfirmOrder
ÀÀ) 5
(
ÀÀ5 6
string
ÀÀ6 <
id
ÀÀ= ?
)
ÀÀ? @
{
ÃÃ 	
var
ÕÕ 
order
ÕÕ 
=
ÕÕ 
await
ÕÕ 
_context
ÕÕ &
.
ÕÕ& '
Order
ÕÕ' ,
.
ÕÕ, -
	FindAsync
ÕÕ- 6
(
ÕÕ6 7
id
ÕÕ7 9
)
ÕÕ9 :
;
ÕÕ: ;
order
ŒŒ 
.
ŒŒ 
HasBeenConfirmed
ŒŒ "
=
ŒŒ# $
$str
ŒŒ% (
;
ŒŒ( )
_context
œœ 
.
œœ 
Update
œœ 
(
œœ 
order
œœ !
)
œœ! "
;
œœ" #
await
–– 
_context
–– 
.
–– 
SaveChangesAsync
–– +
(
––+ ,
)
––, -
;
––- .
return
—— 
RedirectToAction
—— #
(
——# $
nameof
——$ *
(
——* +
Index
——+ 0
)
——0 1
)
——1 2
;
——2 3
}
““ 	
[
‘‘ 	

ActionName
‘‘	 
(
‘‘ 
$str
‘‘  
)
‘‘  !
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
’’' (

PlaceOrder
’’) 3
(
’’3 4
string
’’4 :
id
’’; =
)
’’= >
{
÷÷ 	
var
◊◊ 
order
◊◊ 
=
◊◊ 
await
◊◊ 
_context
◊◊ &
.
◊◊& '
Order
◊◊' ,
.
◊◊, -
	FindAsync
◊◊- 6
(
◊◊6 7
id
◊◊7 9
)
◊◊9 :
;
◊◊: ;
order
ÿÿ 
.
ÿÿ 
HasBeenPlaced
ÿÿ 
=
ÿÿ  !
$num
ÿÿ" #
;
ÿÿ# $
_context
ŸŸ 
.
ŸŸ 
Update
ŸŸ 
(
ŸŸ 
order
ŸŸ !
)
ŸŸ! "
;
ŸŸ" #
await
⁄⁄ 
_context
⁄⁄ 
.
⁄⁄ 
SaveChangesAsync
⁄⁄ +
(
⁄⁄+ ,
)
⁄⁄, -
;
⁄⁄- .
return
€€ 
RedirectToAction
€€ #
(
€€# $
nameof
€€$ *
(
€€* +
IndexBasket
€€+ 6
)
€€6 7
)
€€7 8
;
€€8 9
}
‹‹ 	
[
ﬁﬁ 	

ActionName
ﬁﬁ	 
(
ﬁﬁ 
$str
ﬁﬁ $
)
ﬁﬁ$ %
]
ﬁﬁ% &
public
ﬂﬂ 
async
ﬂﬂ 
Task
ﬂﬂ 
<
ﬂﬂ 
IActionResult
ﬂﬂ '
>
ﬂﬂ' (
DecrementOrder
ﬂﬂ) 7
(
ﬂﬂ7 8
string
ﬂﬂ8 >
id
ﬂﬂ? A
)
ﬂﬂA B
{
‡‡ 	
var
·· 
order
·· 
=
·· 
await
·· 
_context
·· &
.
··& '
Order
··' ,
.
··, -
	FindAsync
··- 6
(
··6 7
id
··7 9
)
··9 :
;
··: ;
if
‚‚ 
(
‚‚ 
$num
‚‚ 
<
‚‚ 
order
‚‚ 
.
‚‚ 
Quantity
‚‚ "
)
‚‚" #
{
„„ 
order
‰‰ 
.
‰‰ 
Quantity
‰‰ 
--
‰‰  
;
‰‰  !
_context
ÂÂ 
.
ÂÂ 
Update
ÂÂ 
(
ÂÂ  
order
ÂÂ  %
)
ÂÂ% &
;
ÂÂ& '
await
ÊÊ 
_context
ÊÊ 
.
ÊÊ 
SaveChangesAsync
ÊÊ /
(
ÊÊ/ 0
)
ÊÊ0 1
;
ÊÊ1 2
}
ÁÁ 
return
ËË 
RedirectToAction
ËË #
(
ËË# $
nameof
ËË$ *
(
ËË* +
IndexBasket
ËË+ 6
)
ËË6 7
)
ËË7 8
;
ËË8 9
}
ÈÈ 	
[
ÎÎ 	

ActionName
ÎÎ	 
(
ÎÎ 
$str
ÎÎ $
)
ÎÎ$ %
]
ÎÎ% &
public
ÏÏ 
async
ÏÏ 
Task
ÏÏ 
<
ÏÏ 
IActionResult
ÏÏ '
>
ÏÏ' (
IncrementOrder
ÏÏ) 7
(
ÏÏ7 8
string
ÏÏ8 >
id
ÏÏ? A
)
ÏÏA B
{
ÌÌ 	
var
ÓÓ 
order
ÓÓ 
=
ÓÓ 
await
ÓÓ 
_context
ÓÓ &
.
ÓÓ& '
Order
ÓÓ' ,
.
ÓÓ, -
	FindAsync
ÓÓ- 6
(
ÓÓ6 7
id
ÓÓ7 9
)
ÓÓ9 :
;
ÓÓ: ;
order
ÔÔ 
.
ÔÔ 
Quantity
ÔÔ 
++
ÔÔ 
;
ÔÔ 
_context
 
.
 
Update
 
(
 
order
 !
)
! "
;
" #
await
ÒÒ 
_context
ÒÒ 
.
ÒÒ 
SaveChangesAsync
ÒÒ +
(
ÒÒ+ ,
)
ÒÒ, -
;
ÒÒ- .
return
ÚÚ 
RedirectToAction
ÚÚ #
(
ÚÚ# $
nameof
ÚÚ$ *
(
ÚÚ* +
IndexBasket
ÚÚ+ 6
)
ÚÚ6 7
)
ÚÚ7 8
;
ÚÚ8 9
}
ÛÛ 	
}
ÙÙ 
}ıı §m
ëE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Controllers\ProductCategoriesController.cs
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
{ 
public 

class '
ProductCategoriesController ,
:- .

Controller/ 9
{ 
private 
readonly 
EcommerceContext )
_context* 2
;2 3
public '
ProductCategoriesController *
(* +
EcommerceContext+ ;
context< C
)C D
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
{ 	
var 
ecommerceContext  
=! "
_context# +
.+ ,
ProductCategory, ;
.; <
Include< C
(C D
pD E
=>F H
pI J
.J K
CategoryK S
)S T
.T U
IncludeU \
(\ ]
p] ^
=>_ a
pb c
.c d
Productd k
)k l
;l m
return 
View 
( 
await 
ecommerceContext .
.. /
ToListAsync/ :
(: ;
); <
)< =
;= >
} 	
public 
async 
Task 
< 
IActionResult '
>' (
Details) 0
(0 1
string1 7
id8 :
): ;
{ 	
if 
( 
id 
== 
null 
) 
{   
return!! 
NotFound!! 
(!!  
)!!  !
;!!! "
}"" 
var$$ 
productCategory$$ 
=$$  !
await$$" '
_context$$( 0
.$$0 1
ProductCategory$$1 @
.%% 
Include%% 
(%% 
p%% 
=>%% 
p%% 
.%%  
Category%%  (
)%%( )
.&& 
Include&& 
(&& 
p&& 
=>&& 
p&& 
.&&  
Product&&  '
)&&' (
.'' 
FirstOrDefaultAsync'' $
(''$ %
m''% &
=>''' )
m''* +
.''+ ,
IdProductCategory'', =
==''> @
id''A C
)''C D
;''D E
if(( 
((( 
productCategory(( 
==((  "
null((# '
)((' (
{)) 
return** 
NotFound** 
(**  
)**  !
;**! "
}++ 
return-- 
View-- 
(-- 
productCategory-- '
)--' (
;--( )
}.. 	
public11 
IActionResult11 
Create11 #
(11# $
)11$ %
{22 	
ViewData33 
[33 
$str33 !
]33! "
=33# $
new33% (

SelectList33) 3
(333 4
_context334 <
.33< =
Category33= E
,33E F
$str33G S
,33S T
$str33U c
)33c d
;33d e
ViewData44 
[44 
$str44  
]44  !
=44" #
new44$ '

SelectList44( 2
(442 3
_context443 ;
.44; <
Product44< C
,44C D
$str44E P
,44P Q
$str44R _
)44_ `
;44` a
return55 
View55 
(55 
)55 
;55 
}66 	
[;; 	
HttpPost;;	 
];; 
[<< 	$
ValidateAntiForgeryToken<<	 !
]<<! "
public== 
async== 
Task== 
<== 
IActionResult== '
>==' (
Create==) /
(==/ 0
[==0 1
Bind==1 5
(==5 6
$str==6 L
)==L M
]==M N
ProductCategory==O ^
productCategory==_ n
)==n o
{>> 	
if?? 
(?? 

ModelState?? 
.?? 
IsValid?? "
)??" #
{@@ 
productCategoryAA 
.AA  
IdProductCategoryAA  1
=AA2 3
GuidAA4 8
.AA8 9
NewGuidAA9 @
(AA@ A
)AAA B
.AAB C
ToStringAAC K
(AAK L
)AAL M
;AAM N
_contextBB 
.BB 
AddBB 
(BB 
productCategoryBB ,
)BB, -
;BB- .
awaitCC 
_contextCC 
.CC 
SaveChangesAsyncCC /
(CC/ 0
)CC0 1
;CC1 2
returnDD 
RedirectToActionDD '
(DD' (
nameofDD( .
(DD. /
IndexDD/ 4
)DD4 5
)DD5 6
;DD6 7
}EE 
ViewDataFF 
[FF 
$strFF !
]FF! "
=FF# $
newFF% (

SelectListFF) 3
(FF3 4
_contextFF4 <
.FF< =
CategoryFF= E
,FFE F
$strFFG S
,FFS T
$strFFU c
,FFc d
productCategoryFFe t
.FFt u

CategoryIdFFu 
)	FF Ä
;
FFÄ Å
ViewDataGG 
[GG 
$strGG  
]GG  !
=GG" #
newGG$ '

SelectListGG( 2
(GG2 3
_contextGG3 ;
.GG; <
ProductGG< C
,GGC D
$strGGE P
,GGP Q
$strGGR _
,GG_ `
productCategoryGGa p
.GGp q
	ProductIdGGq z
)GGz {
;GG{ |
returnHH 
ViewHH 
(HH 
productCategoryHH '
)HH' (
;HH( )
}II 	
publicLL 
asyncLL 
TaskLL 
<LL 
IActionResultLL '
>LL' (
EditLL) -
(LL- .
stringLL. 4
idLL5 7
)LL7 8
{MM 	
ifNN 
(NN 
idNN 
==NN 
nullNN 
)NN 
{OO 
returnPP 
NotFoundPP 
(PP  
)PP  !
;PP! "
}QQ 
varSS 
productCategorySS 
=SS  !
awaitSS" '
_contextSS( 0
.SS0 1
ProductCategorySS1 @
.SS@ A
	FindAsyncSSA J
(SSJ K
idSSK M
)SSM N
;SSN O
ifTT 
(TT 
productCategoryTT 
==TT  "
nullTT# '
)TT' (
{UU 
returnVV 
NotFoundVV 
(VV  
)VV  !
;VV! "
}WW 
ViewDataXX 
[XX 
$strXX !
]XX! "
=XX# $
newXX% (

SelectListXX) 3
(XX3 4
_contextXX4 <
.XX< =
CategoryXX= E
,XXE F
$strXXG S
,XXS T
$strXXU c
,XXc d
productCategoryXXe t
.XXt u

CategoryIdXXu 
)	XX Ä
;
XXÄ Å
ViewDataYY 
[YY 
$strYY  
]YY  !
=YY" #
newYY$ '

SelectListYY( 2
(YY2 3
_contextYY3 ;
.YY; <
ProductYY< C
,YYC D
$strYYE P
,YYP Q
$strYYR _
,YY_ `
productCategoryYYa p
.YYp q
	ProductIdYYq z
)YYz {
;YY{ |
returnZZ 
ViewZZ 
(ZZ 
productCategoryZZ '
)ZZ' (
;ZZ( )
}[[ 	
[`` 	
HttpPost``	 
]`` 
[aa 	$
ValidateAntiForgeryTokenaa	 !
]aa! "
publicbb 
asyncbb 
Taskbb 
<bb 
IActionResultbb '
>bb' (
Editbb) -
(bb- .
stringbb. 4
idbb5 7
,bb7 8
[bb9 :
Bindbb: >
(bb> ?
$strbb? g
)bbg h
]bbh i
ProductCategorybbj y
productCategory	bbz â
)
bbâ ä
{cc 	
ifdd 
(dd 
iddd 
!=dd 
productCategorydd %
.dd% &
IdProductCategorydd& 7
)dd7 8
{ee 
returnff 
NotFoundff 
(ff  
)ff  !
;ff! "
}gg 
ifii 
(ii 

ModelStateii 
.ii 
IsValidii "
)ii" #
{jj 
trykk 
{ll 
_contextmm 
.mm 
Updatemm #
(mm# $
productCategorymm$ 3
)mm3 4
;mm4 5
awaitnn 
_contextnn "
.nn" #
SaveChangesAsyncnn# 3
(nn3 4
)nn4 5
;nn5 6
}oo 
catchpp 
(pp (
DbUpdateConcurrencyExceptionpp 3
)pp3 4
{qq 
ifrr 
(rr 
!rr !
ProductCategoryExistsrr .
(rr. /
productCategoryrr/ >
.rr> ?
IdProductCategoryrr? P
)rrP Q
)rrQ R
{ss 
returntt 
NotFoundtt '
(tt' (
)tt( )
;tt) *
}uu 
elsevv 
{ww 
throwxx 
;xx 
}yy 
}zz 
return{{ 
RedirectToAction{{ '
({{' (
nameof{{( .
({{. /
Index{{/ 4
){{4 5
){{5 6
;{{6 7
}|| 
ViewData}} 
[}} 
$str}} !
]}}! "
=}}# $
new}}% (

SelectList}}) 3
(}}3 4
_context}}4 <
.}}< =
Category}}= E
,}}E F
$str}}G S
,}}S T
$str}}U c
,}}c d
productCategory}}e t
.}}t u

CategoryId}}u 
)	}} Ä
;
}}Ä Å
ViewData~~ 
[~~ 
$str~~  
]~~  !
=~~" #
new~~$ '

SelectList~~( 2
(~~2 3
_context~~3 ;
.~~; <
Product~~< C
,~~C D
$str~~E P
,~~P Q
$str~~R _
,~~_ `
productCategory~~a p
.~~p q
	ProductId~~q z
)~~z {
;~~{ |
return 
View 
( 
productCategory '
)' (
;( )
}
ÄÄ 	
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
ÉÉ' (
Delete
ÉÉ) /
(
ÉÉ/ 0
string
ÉÉ0 6
id
ÉÉ7 9
)
ÉÉ9 :
{
ÑÑ 	
if
ÖÖ 
(
ÖÖ 
id
ÖÖ 
==
ÖÖ 
null
ÖÖ 
)
ÖÖ 
{
ÜÜ 
return
áá 
NotFound
áá 
(
áá  
)
áá  !
;
áá! "
}
àà 
var
ää 
productCategory
ää 
=
ää  !
await
ää" '
_context
ää( 0
.
ää0 1
ProductCategory
ää1 @
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
ãã  
Category
ãã  (
)
ãã( )
.
åå 
Include
åå 
(
åå 
p
åå 
=>
åå 
p
åå 
.
åå  
Product
åå  '
)
åå' (
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
çç+ ,
IdProductCategory
çç, =
==
çç> @
id
ççA C
)
ççC D
;
ççD E
if
éé 
(
éé 
productCategory
éé 
==
éé  "
null
éé# '
)
éé' (
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
ìì 
productCategory
ìì '
)
ìì' (
;
ìì( )
}
îî 	
[
óó 	
HttpPost
óó	 
,
óó 

ActionName
óó 
(
óó 
$str
óó &
)
óó& '
]
óó' (
[
òò 	&
ValidateAntiForgeryToken
òò	 !
]
òò! "
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
ôô' (
DeleteConfirmed
ôô) 8
(
ôô8 9
string
ôô9 ?
id
ôô@ B
)
ôôB C
{
öö 	
var
õõ 
productCategory
õõ 
=
õõ  !
await
õõ" '
_context
õõ( 0
.
õõ0 1
ProductCategory
õõ1 @
.
õõ@ A
	FindAsync
õõA J
(
õõJ K
id
õõK M
)
õõM N
;
õõN O
_context
úú 
.
úú 
ProductCategory
úú $
.
úú$ %
Remove
úú% +
(
úú+ ,
productCategory
úú, ;
)
úú; <
;
úú< =
await
ùù 
_context
ùù 
.
ùù 
SaveChangesAsync
ùù +
(
ùù+ ,
)
ùù, -
;
ùù- .
return
ûû 
RedirectToAction
ûû #
(
ûû# $
nameof
ûû$ *
(
ûû* +
Index
ûû+ 0
)
ûû0 1
)
ûû1 2
;
ûû2 3
}
üü 	
private
°° 
bool
°° #
ProductCategoryExists
°° *
(
°°* +
string
°°+ 1
id
°°2 4
)
°°4 5
{
¢¢ 	
return
££ 
_context
££ 
.
££ 
ProductCategory
££ +
.
££+ ,
Any
££, /
(
££/ 0
e
££0 1
=>
££2 4
e
££5 6
.
££6 7
IdProductCategory
££7 H
==
££I K
id
££L N
)
££N O
;
££O P
}
§§ 	
}
•• 
}¶¶ Ÿj
çE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Controllers\ProductOrdersController.cs
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
{ 
public 

class #
ProductOrdersController (
:) *

Controller+ 5
{ 
private 
readonly 
EcommerceContext )
_context* 2
;2 3
public #
ProductOrdersController &
(& '
EcommerceContext' 7
context8 ?
)? @
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
{ 	
var 
ecommerceContext  
=! "
_context# +
.+ ,
ProductOrder, 8
.8 9
Include9 @
(@ A
pA B
=>C E
pF G
.G H
OrderIdFkNavigationH [
)[ \
.\ ]
Include] d
(d e
pe f
=>g i
pj k
.k l"
ProductIdFkNavigation	l Å
)
Å Ç
;
Ç É
return 
View 
( 
await 
ecommerceContext .
.. /
ToListAsync/ :
(: ;
); <
)< =
;= >
} 	
public 
async 
Task 
< 
IActionResult '
>' (
Details) 0
(0 1
string1 7
id8 :
): ;
{ 	
if 
( 
id 
== 
null 
) 
{   
return!! 
NotFound!! 
(!!  
)!!  !
;!!! "
}"" 
var$$ 
productOrder$$ 
=$$ 
await$$ $
_context$$% -
.$$- .
ProductOrder$$. :
.%% 
Include%% 
(%% 
p%% 
=>%% 
p%% 
.%%  
OrderIdFkNavigation%%  3
)%%3 4
.&& 
Include&& 
(&& 
p&& 
=>&& 
p&& 
.&&  !
ProductIdFkNavigation&&  5
)&&5 6
.'' 
FirstOrDefaultAsync'' $
(''$ %
m''% &
=>''' )
m''* +
.''+ ,
IdProductOrder'', :
==''; =
id''> @
)''@ A
;''A B
if(( 
((( 
productOrder(( 
==(( 
null((  $
)(($ %
{)) 
return** 
NotFound** 
(**  
)**  !
;**! "
}++ 
return-- 
View-- 
(-- 
productOrder-- $
)--$ %
;--% &
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
.33; <
Order33< A
,33A B
$str33C L
,33L M
$str33N W
)33W X
;33X Y
ViewData44 
[44 
$str44 "
]44" #
=44$ %
new44& )

SelectList44* 4
(444 5
_context445 =
.44= >
Product44> E
,44E F
$str44G R
,44R S
$str44T _
)44_ `
;44` a
return55 
View55 
(55 
)55 
;55 
}66 	
[;; 	
HttpPost;;	 
];; 
[<< 	$
ValidateAntiForgeryToken<<	 !
]<<! "
public== 
async== 
Task== 
<== 
IActionResult== '
>==' (
Create==) /
(==/ 0
[==0 1
Bind==1 5
(==5 6
$str==6 \
)==\ ]
]==] ^
ProductOrder==_ k
productOrder==l x
)==x y
{>> 	
if?? 
(?? 

ModelState?? 
.?? 
IsValid?? "
)??" #
{@@ 
_contextAA 
.AA 
AddAA 
(AA 
productOrderAA )
)AA) *
;AA* +
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
.EE; <
OrderEE< A
,EEA B
$strEEC L
,EEL M
$strEEN W
,EEW X
productOrderEEY e
.EEe f
	OrderIdFkEEf o
)EEo p
;EEp q
ViewDataFF 
[FF 
$strFF "
]FF" #
=FF$ %
newFF& )

SelectListFF* 4
(FF4 5
_contextFF5 =
.FF= >
ProductFF> E
,FFE F
$strFFG R
,FFR S
$strFFT _
,FF_ `
productOrderFFa m
.FFm n
ProductIdFkFFn y
)FFy z
;FFz {
returnGG 
ViewGG 
(GG 
productOrderGG $
)GG$ %
;GG% &
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
varRR 
productOrderRR 
=RR 
awaitRR $
_contextRR% -
.RR- .
ProductOrderRR. :
.RR: ;
	FindAsyncRR; D
(RRD E
idRRE G
)RRG H
;RRH I
ifSS 
(SS 
productOrderSS 
==SS 
nullSS  $
)SS$ %
{TT 
returnUU 
NotFoundUU 
(UU  
)UU  !
;UU! "
}VV 
ViewDataWW 
[WW 
$strWW  
]WW  !
=WW" #
newWW$ '

SelectListWW( 2
(WW2 3
_contextWW3 ;
.WW; <
OrderWW< A
,WWA B
$strWWC L
,WWL M
$strWWN W
,WWW X
productOrderWWY e
.WWe f
	OrderIdFkWWf o
)WWo p
;WWp q
ViewDataXX 
[XX 
$strXX "
]XX" #
=XX$ %
newXX& )

SelectListXX* 4
(XX4 5
_contextXX5 =
.XX= >
ProductXX> E
,XXE F
$strXXG R
,XXR S
$strXXT _
,XX_ `
productOrderXXa m
.XXm n
ProductIdFkXXn y
)XXy z
;XXz {
returnYY 
ViewYY 
(YY 
productOrderYY $
)YY$ %
;YY% &
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
$straa? e
)aae f
]aaf g
ProductOrderaah t
productOrder	aau Å
)
aaÅ Ç
{bb 	
ifcc 
(cc 
idcc 
!=cc 
productOrdercc "
.cc" #
IdProductOrdercc# 1
)cc1 2
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
(ll# $
productOrderll$ 0
)ll0 1
;ll1 2
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
!qq 
ProductOrderExistsqq +
(qq+ ,
productOrderqq, 8
.qq8 9
IdProductOrderqq9 G
)qqG H
)qqH I
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
$str||  
]||  !
=||" #
new||$ '

SelectList||( 2
(||2 3
_context||3 ;
.||; <
Order||< A
,||A B
$str||C L
,||L M
$str||N W
,||W X
productOrder||Y e
.||e f
	OrderIdFk||f o
)||o p
;||p q
ViewData}} 
[}} 
$str}} "
]}}" #
=}}$ %
new}}& )

SelectList}}* 4
(}}4 5
_context}}5 =
.}}= >
Product}}> E
,}}E F
$str}}G R
,}}R S
$str}}T _
,}}_ `
productOrder}}a m
.}}m n
ProductIdFk}}n y
)}}y z
;}}z {
return~~ 
View~~ 
(~~ 
productOrder~~ $
)~~$ %
;~~% &
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
ââ 
productOrder
ââ 
=
ââ 
await
ââ $
_context
ââ% -
.
ââ- .
ProductOrder
ââ. :
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
ää  !
OrderIdFkNavigation
ää  3
)
ää3 4
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
ãã  #
ProductIdFkNavigation
ãã  5
)
ãã5 6
.
åå !
FirstOrDefaultAsync
åå $
(
åå$ %
m
åå% &
=>
åå' )
m
åå* +
.
åå+ ,
IdProductOrder
åå, :
==
åå; =
id
åå> @
)
åå@ A
;
ååA B
if
çç 
(
çç 
productOrder
çç 
==
çç 
null
çç  $
)
çç$ %
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
íí 
productOrder
íí $
)
íí$ %
;
íí% &
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
öö 
productOrder
öö 
=
öö 
await
öö $
_context
öö% -
.
öö- .
ProductOrder
öö. :
.
öö: ;
	FindAsync
öö; D
(
ööD E
id
ööE G
)
ööG H
;
ööH I
_context
õõ 
.
õõ 
ProductOrder
õõ !
.
õõ! "
Remove
õõ" (
(
õõ( )
productOrder
õõ) 5
)
õõ5 6
;
õõ6 7
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
††  
ProductOrderExists
†† '
(
††' (
string
††( .
id
††/ 1
)
††1 2
{
°° 	
return
¢¢ 
_context
¢¢ 
.
¢¢ 
ProductOrder
¢¢ (
.
¢¢( )
Any
¢¢) ,
(
¢¢, -
e
¢¢- .
=>
¢¢/ 1
e
¢¢2 3
.
¢¢3 4
IdProductOrder
¢¢4 B
==
¢¢C E
id
¢¢F H
)
¢¢H I
;
¢¢I J
}
££ 	
}
§§ 
}•• ú„
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
;--E F
if// 
(// 
!// 
String// 
.// 
IsNullOrEmpty// %
(//% &
searchString//& 2
)//2 3
)//3 4
{00 
products11 
=11 
products11 #
.11# $
Where11$ )
(11) *
s11* +
=>11, .
s11/ 0
.110 1
ProductName111 <
.11< =
Contains11= E
(11E F
searchString11F R
)11R S
)11S T
;11T U
}22 
if33 
(33 
price133 
!=33 
$num33 
)33 
{44 
products55 
=55 
products55 #
.55# $
Where55$ )
(55) *
s55* +
=>55, .
s55/ 0
.550 1
Price551 6
>=557 9
price155: @
)55@ A
;55A B
}66 
if77 
(77 
price277 
!=77 
$num77 
)77 
{88 
products99 
=99 
products99 #
.99# $
Where99$ )
(99) *
s99* +
=>99, .
s99/ 0
.990 1
Price991 6
<=997 9
price299: @
)99@ A
;99A B
}:: 
if;; 
(;; 
!;; 
String;; 
.;; 
IsNullOrEmpty;; %
(;;% &
category;;& .
);;. /
);;/ 0
{<< 
List== 
<== 
Product== 
>== 
prod== "
===# $
new==% (
List==) -
<==- .
Product==. 5
>==5 6
(==6 7
)==7 8
;==8 9
var>> 
categoryIds>> 
=>>  !
from>>" &
m>>' (
in>>) +
_context>>, 4
.>>4 5
ProductCategory>>5 D
.>>D E
Where>>E J
(>>J K
s>>K L
=>>>M O
s>>P Q
.>>Q R
Category>>R Z
.>>Z [
CategoryName>>[ g
.>>g h
Equals>>h n
(>>n o
category>>o w
)>>w x
)>>x y
select	>>z Ä
m
>>Å Ç
;
>>Ç É
foreach?? 
(?? 
var?? 

categoryId?? &
in??' )
categoryIds??* 5
)??5 6
{@@ 
varAA 
filteredProductsAA (
=AA) *
productsAA+ 3
.AA3 4
WhereAA4 9
(AA9 :
sAA: ;
=>AA< >
sAA? @
.AA@ A
ProductCategoryAAA P
.AAP Q
ContainsAAQ Y
(AAY Z

categoryIdAAZ d
)AAd e
)AAe f
;AAf g
foreachBB 
(BB 
varBB  
pBB! "
inBB# %
filteredProductsBB& 6
)BB6 7
{CC 
prodDD 
.DD 
AddDD  
(DD  !
pDD! "
)DD" #
;DD# $
}EE 
}FF 
mymodelGG 
.GG 
ProductsGG  
=GG! "
prodGG# '
;GG' (
returnHH 
ViewHH 
(HH 
mymodelHH #
)HH# $
;HH$ %
}II 
awaitJJ 
productsJJ 
.JJ 
ToListAsyncJJ &
(JJ& '
)JJ' (
;JJ( )
mymodelMM 
.MM 
ProductsMM 
=MM 
productsMM  (
;MM( )
returnNN 
ViewNN 
(NN 
mymodelNN 
)NN  
;NN  !
}OO 	
[TT 	

ActionNameTT	 
(TT 
$strTT  
)TT  !
]TT! "
publicUU 
asyncUU 
TaskUU 
<UU 
IActionResultUU '
>UU' (

IndexSalesUU) 3
(UU3 4
stringUU4 :
searchStringUU; G
,UUG H
decimalUUI P
price1UUQ W
,UUW X
decimalUUY `
price2UUa g
,UUg h
stringUUi o
categoryUUp x
)UUx y
{VV 	
varWW 
stocksWW 
=WW 
fromWW 
mWW 
inWW  "
_contextWW# +
.WW+ ,

StockEntryWW, 6
selectWW7 =
mWW> ?
;WW? @
varXX 
productsXX 
=XX 
fromXX 
mXX  !
inXX" $
_contextXX% -
.XX- .
ProductXX. 5
.XX5 6
IncludeXX6 =
(XX= >
oXX> ?
=>XX@ B
oXXC D
.XXD E
ProductCategoryXXE T
)XXT U
.XXU V
ThenIncludeXXV a
(XXa b
zXXb c
=>XXd f
zXXg h
.XXh i
CategoryXXi q
)XXq r
.XXr s
WhereXXs x
(XXx y
sXXy z
=>XX{ }
sXX~ 
.	XX Ä
Sales
XXÄ Ö
>
XXÜ á
$num
XXà â
)
XXâ ä
.
XXä ã
OrderBy
XXã í
(
XXí ì
x
XXì î
=>
XXï ó
x
XXò ô
.
XXô ö
ProductName
XXö •
)
XX• ¶
selectYY !
mYY" #
;YY# $
foreachZZ 
(ZZ 
varZZ 
stockZZ 
inZZ !
stocksZZ" (
)ZZ( )
{[[ 
foreach\\ 
(\\ 
var\\ 
prod\\ !
in\\" $
products\\% -
)\\- .
{]] 
if^^ 
(^^ 
(^^ 
stock^^ 
.^^ 
	ProductId^^ (
==^^) +
prod^^, 0
.^^0 1
	ProductId^^1 :
)^^: ;
&&^^< >
(^^? @
stock^^@ E
.^^E F
RemainingStock^^F T
<=^^U W
$num^^X Y
)^^Y Z
)^^Z [
{__ 
products``  
=``! "
products``# +
.``+ ,
Where``, 1
(``1 2
q``2 3
=>``4 6
!``7 8
q``8 9
.``9 :
Equals``: @
(``@ A
prod``A E
)``E F
)``F G
;``G H
}aa 
}bb 
}cc 
dynamicdd 
mymodeldd 
=dd 
newdd !
ExpandoObjectdd" /
(dd/ 0
)dd0 1
;dd1 2
mymodelee 
.ee 

Categoryesee 
=ee  
fromee! %
mee& '
inee( *
_contextee+ 3
.ee3 4
Categoryee4 <
selectee= C
meeD E
;eeE F
ifgg 
(gg 
!gg 
Stringgg 
.gg 
IsNullOrEmptygg %
(gg% &
searchStringgg& 2
)gg2 3
)gg3 4
{hh 
productsii 
=ii 
productsii #
.ii# $
Whereii$ )
(ii) *
sii* +
=>ii, .
sii/ 0
.ii0 1
ProductNameii1 <
.ii< =
Containsii= E
(iiE F
searchStringiiF R
)iiR S
)iiS T
;iiT U
}jj 
ifkk 
(kk 
price1kk 
!=kk 
$numkk 
)kk 
{ll 
productsmm 
=mm 
productsmm #
.mm# $
Wheremm$ )
(mm) *
smm* +
=>mm, .
smm/ 0
.mm0 1
Pricemm1 6
>=mm7 9
price1mm: @
)mm@ A
;mmA B
}nn 
ifoo 
(oo 
price2oo 
!=oo 
$numoo 
)oo 
{pp 
productsqq 
=qq 
productsqq #
.qq# $
Whereqq$ )
(qq) *
sqq* +
=>qq, .
sqq/ 0
.qq0 1
Priceqq1 6
<=qq7 9
price2qq: @
)qq@ A
;qqA B
}rr 
ifss 
(ss 
!ss 
Stringss 
.ss 
IsNullOrEmptyss %
(ss% &
categoryss& .
)ss. /
)ss/ 0
{tt 
Listuu 
<uu 
Productuu 
>uu 
produu "
=uu# $
newuu% (
Listuu) -
<uu- .
Productuu. 5
>uu5 6
(uu6 7
)uu7 8
;uu8 9
varvv 
categoryIdsvv 
=vv  !
fromvv" &
mvv' (
invv) +
_contextvv, 4
.vv4 5
ProductCategoryvv5 D
.vvD E
WherevvE J
(vvJ K
svvK L
=>vvM O
svvP Q
.vvQ R
CategoryvvR Z
.vvZ [
CategoryNamevv[ g
.vvg h
Equalsvvh n
(vvn o
categoryvvo w
)vvw x
)vvx y
select	vvz Ä
m
vvÅ Ç
;
vvÇ É
foreachww 
(ww 
varww 

categoryIdww '
inww( *
categoryIdsww+ 6
)ww6 7
{xx 
varyy 
filteredProductsyy (
=yy) *
productsyy+ 3
.yy3 4
Whereyy4 9
(yy9 :
syy: ;
=>yy< >
syy? @
.yy@ A
ProductCategoryyyA P
.yyP Q
ContainsyyQ Y
(yyY Z

categoryIdyyZ d
)yyd e
)yye f
;yyf g
foreachzz 
(zz 
varzz  
pzz! "
inzz# %
filteredProductszz& 6
)zz6 7
{{{ 
foreach|| 
(||  !
var||! $
stock||% *
in||+ -
stocks||. 4
)||4 5
{}} 
if~~ 
(~~  
stock~~  %
.~~% &
	ProductId~~& /
==~~0 2
p~~3 4
.~~4 5
	ProductId~~5 >
&&~~? A
stock~~B G
.~~G H
RemainingStock~~H V
>~~W X
$num~~Y Z
)~~Z [
{ 
prod
ÄÄ  $
.
ÄÄ$ %
Add
ÄÄ% (
(
ÄÄ( )
p
ÄÄ) *
)
ÄÄ* +
;
ÄÄ+ ,
}
ÅÅ 
}
ÇÇ 
}
ÉÉ 
}
ÑÑ 
mymodel
ÖÖ 
.
ÖÖ 
Products
ÖÖ  
=
ÖÖ! "
prod
ÖÖ# '
;
ÖÖ' (
return
ÜÜ 
View
ÜÜ 
(
ÜÜ 
mymodel
ÜÜ #
)
ÜÜ# $
;
ÜÜ$ %
}
áá 
mymodel
ââ 
.
ââ 
Products
ââ 
=
ââ 
await
ââ $
products
ââ% -
.
ââ- .
ToListAsync
ââ. 9
(
ââ9 :
)
ââ: ;
;
ââ; <
return
ää 
View
ää 
(
ää 
mymodel
ää 
)
ää  
;
ää  !
}
ãã 	
public
éé 
async
éé 
Task
éé 
<
éé 
IActionResult
éé '
>
éé' (
Details
éé) 0
(
éé0 1
string
éé1 7
id
éé8 :
)
éé: ;
{
èè 	
if
êê 
(
êê 
id
êê 
==
êê 
null
êê 
)
êê 
{
ëë 
return
íí 
NotFound
íí 
(
íí  
)
íí  !
;
íí! "
}
ìì 
var
ïï 
product
ïï 
=
ïï 
await
ïï 
_context
ïï  (
.
ïï( )
Product
ïï) 0
.
ññ !
FirstOrDefaultAsync
ññ $
(
ññ$ %
m
ññ% &
=>
ññ' )
m
ññ* +
.
ññ+ ,
	ProductId
ññ, 5
==
ññ6 8
id
ññ9 ;
)
ññ; <
;
ññ< =
if
óó 
(
óó 
product
óó 
==
óó 
null
óó 
)
óó  
{
òò 
return
ôô 
NotFound
ôô 
(
ôô  
)
ôô  !
;
ôô! "
}
öö 
return
úú 
View
úú 
(
úú 
product
úú 
)
úú  
;
úú  !
}
ùù 	
public
†† 
IActionResult
†† 
Create
†† #
(
††# $
)
††$ %
{
°° 	
return
¢¢ 
View
¢¢ 
(
¢¢ 
)
¢¢ 
;
¢¢ 
}
££ 	
[
®® 	
HttpPost
®®	 
]
®® 
[
©© 	&
ValidateAntiForgeryToken
©©	 !
]
©©! "
public
™™ 
async
™™ 
Task
™™ 
<
™™ 
IActionResult
™™ '
>
™™' (
Create
™™) /
(
™™/ 0
[
™™0 1
Bind
™™1 5
(
™™5 6
$str
™™6 }
)
™™} ~
]
™™~ 
Product™™Ä á
product™™à è
)™™è ê
{
´´ 	
if
¨¨ 
(
¨¨ 

ModelState
¨¨ 
.
¨¨ 
IsValid
¨¨ "
)
¨¨" #
{
≠≠ 
product
ÆÆ 
.
ÆÆ 
	ProductId
ÆÆ !
=
ÆÆ" #
Guid
ÆÆ$ (
.
ÆÆ( )
NewGuid
ÆÆ) 0
(
ÆÆ0 1
)
ÆÆ1 2
.
ÆÆ2 3
ToString
ÆÆ3 ;
(
ÆÆ; <
)
ÆÆ< =
;
ÆÆ= >
_context
ØØ 
.
ØØ 
Add
ØØ 
(
ØØ 
product
ØØ $
)
ØØ$ %
;
ØØ% &
await
∞∞ 
_context
∞∞ 
.
∞∞ 
SaveChangesAsync
∞∞ /
(
∞∞/ 0
)
∞∞0 1
;
∞∞1 2

StockEntry
±± 
stock
±±  
=
±±! "
new
±±# &

StockEntry
±±' 1
(
±±1 2
)
±±2 3
;
±±3 4
stock
≤≤ 
.
≤≤ 
RemainingStock
≤≤ $
=
≤≤% &
$num
≤≤' (
;
≤≤( )
stock
≥≥ 
.
≥≥ 
	ProductId
≥≥ 
=
≥≥  !
product
≥≥" )
.
≥≥) *
	ProductId
≥≥* 3
;
≥≥3 4
stock
¥¥ 
.
¥¥ 
StockId
¥¥ 
=
¥¥ 
Guid
¥¥  $
.
¥¥$ %
NewGuid
¥¥% ,
(
¥¥, -
)
¥¥- .
.
¥¥. /
ToString
¥¥/ 7
(
¥¥7 8
)
¥¥8 9
;
¥¥9 :
_context
µµ 
.
µµ 
Add
µµ 
(
µµ 
stock
µµ "
)
µµ" #
;
µµ# $
await
∂∂ 
_context
∂∂ 
.
∂∂ 
SaveChangesAsync
∂∂ /
(
∂∂/ 0
)
∂∂0 1
;
∂∂1 2
return
∑∑ 
RedirectToAction
∑∑ '
(
∑∑' (
nameof
∑∑( .
(
∑∑. /
Index
∑∑/ 4
)
∑∑4 5
)
∑∑5 6
;
∑∑6 7
}
∏∏ 
return
ππ 
View
ππ 
(
ππ 
product
ππ 
)
ππ  
;
ππ  !
}
∫∫ 	
public
ΩΩ 
async
ΩΩ 
Task
ΩΩ 
<
ΩΩ 
IActionResult
ΩΩ '
>
ΩΩ' (
Edit
ΩΩ) -
(
ΩΩ- .
string
ΩΩ. 4
id
ΩΩ5 7
)
ΩΩ7 8
{
ææ 	
if
øø 
(
øø 
id
øø 
==
øø 
null
øø 
)
øø 
{
¿¿ 
return
¡¡ 
NotFound
¡¡ 
(
¡¡  
)
¡¡  !
;
¡¡! "
}
¬¬ 
var
ƒƒ 
product
ƒƒ 
=
ƒƒ 
await
ƒƒ 
_context
ƒƒ  (
.
ƒƒ( )
Product
ƒƒ) 0
.
ƒƒ0 1
	FindAsync
ƒƒ1 :
(
ƒƒ: ;
id
ƒƒ; =
)
ƒƒ= >
;
ƒƒ> ?
if
≈≈ 
(
≈≈ 
product
≈≈ 
==
≈≈ 
null
≈≈ 
)
≈≈  
{
∆∆ 
return
«« 
NotFound
«« 
(
««  
)
««  !
;
««! "
}
»» 
return
…… 
View
…… 
(
…… 
product
…… 
)
……  
;
……  !
}
   	
[
œœ 	
HttpPost
œœ	 
]
œœ 
[
–– 	&
ValidateAntiForgeryToken
––	 !
]
––! "
public
—— 
async
—— 
Task
—— 
<
—— 
IActionResult
—— '
>
——' (
Edit
——) -
(
——- .
string
——. 4
id
——5 7
,
——7 8
[
——9 :
Bind
——: >
(
——> ?
$str——? ñ
)——ñ ó
]——ó ò
Product——ô †
product——° ®
)——® ©
{
““ 	
if
”” 
(
”” 
id
”” 
!=
”” 
product
”” 
.
”” 
	ProductId
”” '
)
””' (
{
‘‘ 
return
’’ 
NotFound
’’ 
(
’’  
)
’’  !
;
’’! "
}
÷÷ 
product
◊◊ 
.
◊◊ 
Nprice
◊◊ 
=
◊◊ 
(
◊◊ 
product
◊◊ %
.
◊◊% &
Price
◊◊& +
-
◊◊, -
(
◊◊. /
$num
◊◊/ 1
*
◊◊2 3
product
◊◊4 ;
.
◊◊; <
Price
◊◊< A
/
◊◊B C
$num
◊◊D G
)
◊◊H I
)
◊◊I J
;
◊◊J K
if
ÿÿ 
(
ÿÿ 

ModelState
ÿÿ 
.
ÿÿ 
IsValid
ÿÿ "
)
ÿÿ" #
{
ŸŸ 
try
⁄⁄ 
{
€€ 
_context
‹‹ 
.
‹‹ 
Update
‹‹ #
(
‹‹# $
product
‹‹$ +
)
‹‹+ ,
;
‹‹, -
await
›› 
_context
›› "
.
››" #
SaveChangesAsync
››# 3
(
››3 4
)
››4 5
;
››5 6
}
ﬁﬁ 
catch
ﬂﬂ 
(
ﬂﬂ *
DbUpdateConcurrencyException
ﬂﬂ 3
)
ﬂﬂ3 4
{
‡‡ 
if
·· 
(
·· 
!
·· 
ProductExists
·· &
(
··& '
product
··' .
.
··. /
	ProductId
··/ 8
)
··8 9
)
··9 :
{
‚‚ 
return
„„ 
NotFound
„„ '
(
„„' (
)
„„( )
;
„„) *
}
‰‰ 
else
ÂÂ 
{
ÊÊ 
throw
ÁÁ 
;
ÁÁ 
}
ËË 
}
ÈÈ 
return
ÍÍ 
RedirectToAction
ÍÍ '
(
ÍÍ' (
nameof
ÍÍ( .
(
ÍÍ. /
Index
ÍÍ/ 4
)
ÍÍ4 5
)
ÍÍ5 6
;
ÍÍ6 7
}
ÎÎ 
return
ÏÏ 
View
ÏÏ 
(
ÏÏ 
product
ÏÏ 
)
ÏÏ  
;
ÏÏ  !
}
ÌÌ 	
public
 
async
 
Task
 
<
 
IActionResult
 '
>
' (
Delete
) /
(
/ 0
string
0 6
id
7 9
)
9 :
{
ÒÒ 	
if
ÚÚ 
(
ÚÚ 
id
ÚÚ 
==
ÚÚ 
null
ÚÚ 
)
ÚÚ 
{
ÛÛ 
return
ÙÙ 
NotFound
ÙÙ 
(
ÙÙ  
)
ÙÙ  !
;
ÙÙ! "
}
ıı 
var
˜˜ 
product
˜˜ 
=
˜˜ 
await
˜˜ 
_context
˜˜  (
.
˜˜( )
Product
˜˜) 0
.
¯¯ !
FirstOrDefaultAsync
¯¯ $
(
¯¯$ %
m
¯¯% &
=>
¯¯' )
m
¯¯* +
.
¯¯+ ,
	ProductId
¯¯, 5
==
¯¯6 8
id
¯¯9 ;
)
¯¯; <
;
¯¯< =
if
˘˘ 
(
˘˘ 
product
˘˘ 
==
˘˘ 
null
˘˘ 
)
˘˘  
{
˙˙ 
return
˚˚ 
NotFound
˚˚ 
(
˚˚  
)
˚˚  !
;
˚˚! "
}
¸¸ 
return
˛˛ 
View
˛˛ 
(
˛˛ 
product
˛˛ 
)
˛˛  
;
˛˛  !
}
ˇˇ 	
[
ÇÇ 	
HttpPost
ÇÇ	 
,
ÇÇ 

ActionName
ÇÇ 
(
ÇÇ 
$str
ÇÇ &
)
ÇÇ& '
]
ÇÇ' (
[
ÉÉ 	&
ValidateAntiForgeryToken
ÉÉ	 !
]
ÉÉ! "
public
ÑÑ 
async
ÑÑ 
Task
ÑÑ 
<
ÑÑ 
IActionResult
ÑÑ '
>
ÑÑ' (
DeleteConfirmed
ÑÑ) 8
(
ÑÑ8 9
string
ÑÑ9 ?
id
ÑÑ@ B
)
ÑÑB C
{
ÖÖ 	
var
ÜÜ 
product
ÜÜ 
=
ÜÜ 
await
ÜÜ 
_context
ÜÜ  (
.
ÜÜ( )
Product
ÜÜ) 0
.
ÜÜ0 1
	FindAsync
ÜÜ1 :
(
ÜÜ: ;
id
ÜÜ; =
)
ÜÜ= >
;
ÜÜ> ?
_context
áá 
.
áá 
Product
áá 
.
áá 
Remove
áá #
(
áá# $
product
áá$ +
)
áá+ ,
;
áá, -
await
àà 
_context
àà 
.
àà 
SaveChangesAsync
àà +
(
àà+ ,
)
àà, -
;
àà- .
return
ââ 
RedirectToAction
ââ #
(
ââ# $
nameof
ââ$ *
(
ââ* +
Index
ââ+ 0
)
ââ0 1
)
ââ1 2
;
ââ2 3
}
ää 	
private
åå 
bool
åå 
ProductExists
åå "
(
åå" #
string
åå# )
id
åå* ,
)
åå, -
{
çç 	
return
éé 
_context
éé 
.
éé 
Product
éé #
.
éé# $
Any
éé$ '
(
éé' (
e
éé( )
=>
éé* ,
e
éé- .
.
éé. /
	ProductId
éé/ 8
==
éé9 ;
id
éé< >
)
éé> ?
;
éé? @
}
èè 	
[
íí 	
	Authorize
íí	 
]
íí 
[
ìì 	
HttpGet
ìì	 
,
ìì 

ActionName
ìì 
(
ìì 
$str
ìì (
)
ìì( )
]
ìì) *
public
îî 
async
îî 
Task
îî 
<
îî 
IActionResult
îî '
>
îî' (
	AddToCart
îî) 2
(
îî2 3
string
îî3 9
id
îî: <
)
îî< =
{
ïï 	
var
ññ 
order
ññ 
=
ññ 
new
ññ 
Order
ññ !
(
ññ! "
)
ññ" #
;
ññ# $
order
óó 
.
óó 
OrderId
óó 
=
óó 
Guid
óó  
.
óó  !
NewGuid
óó! (
(
óó( )
)
óó) *
.
óó* +
ToString
óó+ 3
(
óó3 4
)
óó4 5
;
óó5 6
order
òò 
.
òò 
HasBeenPlaced
òò 
=
òò  !
$num
òò" #
;
òò# $
order
ôô 
.
ôô 
HasBeenConfirmed
ôô "
=
ôô# $
$str
ôô% (
;
ôô( )
order
öö 
.
öö 
ClientId
öö 
=
öö "
_httpContextAccessor
öö 1
.
öö1 2
HttpContext
öö2 =
.
öö= >
User
öö> B
.
ööB C
	FindFirst
ööC L
(
ööL M

ClaimTypes
ööM W
.
ööW X
NameIdentifier
ööX f
)
ööf g
.
öög h
Value
ööh m
;
ööm n
_context
õõ 
.
õõ 
Order
õõ 
.
õõ 
Add
õõ 
(
õõ 
order
õõ $
)
õõ$ %
;
õõ% &
var
úú 
stocks
úú 
=
úú 
_context
úú !
.
úú! "

StockEntry
úú" ,
.
úú, -
Include
úú- 4
(
úú4 5
s
úú5 6
=>
úú7 9
s
úú: ;
.
úú; <
Product
úú< C
)
úúC D
.
úúD E
OrderBy
úúE L
(
úúL M
x
úúM N
=>
úúO Q
x
úúR S
.
úúS T
RemainingStock
úúT b
)
úúb c
;
úúc d
foreach
ùù 
(
ùù 
var
ùù 
stock
ùù 
in
ùù !
stocks
ùù" (
)
ùù( )
{
ûû 
if
üü 
(
üü 
stock
üü 
.
üü 
	ProductId
üü #
==
üü$ &
id
üü' )
)
üü) *
{
†† 
stock
°° 
.
°° 
RemainingStock
°° (
--
°°( *
;
°°* +
_context
¢¢ 
.
¢¢ 
Update
¢¢ #
(
¢¢# $
stock
¢¢$ )
)
¢¢) *
;
¢¢* +
break
££ 
;
££ 
}
§§ 
}
•• 
await
¶¶ 
_context
¶¶ 
.
¶¶ 
SaveChangesAsync
¶¶ +
(
¶¶+ ,
)
¶¶, -
;
¶¶- .
var
ßß 
productorder
ßß 
=
ßß 
new
ßß "
ProductOrder
ßß# /
(
ßß/ 0
)
ßß0 1
;
ßß1 2
productorder
®® 
.
®® 
IdProductOrder
®® '
=
®®( )
Guid
®®* .
.
®®. /
NewGuid
®®/ 6
(
®®6 7
)
®®7 8
.
®®8 9
ToString
®®9 A
(
®®A B
)
®®B C
;
®®C D
productorder
©© 
.
©© 
	OrderIdFk
©© "
=
©©# $
order
©©% *
.
©©* +
OrderId
©©+ 2
;
©©2 3
productorder
™™ 
.
™™ 
ProductIdFk
™™ $
=
™™% &
id
™™' )
;
™™) *
_context
´´ 
.
´´ 
ProductOrder
´´ !
.
´´! "
Add
´´" %
(
´´% &
productorder
´´& 2
)
´´2 3
;
´´3 4
await
¨¨ 
_context
¨¨ 
.
¨¨ 
SaveChangesAsync
¨¨ +
(
¨¨+ ,
)
¨¨, -
;
¨¨- .
return
≠≠ 
RedirectToAction
≠≠ #
(
≠≠# $
nameof
≠≠$ *
(
≠≠* +
Index
≠≠+ 0
)
≠≠0 1
)
≠≠1 2
;
≠≠2 3
}
ÆÆ 	
}
∞∞ 
}±± ˇH
ÖE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Controllers\RolesController.cs
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
{ 
public 

class 
RolesController  
:! "

Controller# -
{ 
private 
readonly 
EcommerceContext )
_context* 2
;2 3
public 
RolesController 
( 
EcommerceContext /
context0 7
)7 8
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
.& '
Role' +
.+ ,
ToListAsync, 7
(7 8
)8 9
)9 :
;: ;
} 	
public 
async 
Task 
< 
IActionResult '
>' (
Details) 0
(0 1
int1 4
?4 5
id6 8
)8 9
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
var## 
role## 
=## 
await## 
_context## %
.##% &
Role##& *
.$$ 
FirstOrDefaultAsync$$ $
($$$ %
m$$% &
=>$$' )
m$$* +
.$$+ ,
RoleId$$, 2
==$$3 5
id$$6 8
)$$8 9
;$$9 :
if%% 
(%% 
role%% 
==%% 
null%% 
)%% 
{&& 
return'' 
NotFound'' 
(''  
)''  !
;''! "
}(( 
return** 
View** 
(** 
role** 
)** 
;** 
}++ 	
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
]88E F
Role88G K
role88L P
)88P Q
{99 	
if:: 
(:: 

ModelState:: 
.:: 
IsValid:: "
)::" #
{;; 
_context<< 
.<< 
Add<< 
(<< 
role<< !
)<<! "
;<<" #
await== 
_context== 
.== 
SaveChangesAsync== /
(==/ 0
)==0 1
;==1 2
return>> 
RedirectToAction>> '
(>>' (
nameof>>( .
(>>. /
Index>>/ 4
)>>4 5
)>>5 6
;>>6 7
}?? 
return@@ 
View@@ 
(@@ 
role@@ 
)@@ 
;@@ 
}AA 	
publicDD 
asyncDD 
TaskDD 
<DD 
IActionResultDD '
>DD' (
EditDD) -
(DD- .
intDD. 1
?DD1 2
idDD3 5
)DD5 6
{EE 	
ifFF 
(FF 
idFF 
==FF 
nullFF 
)FF 
{GG 
returnHH 
NotFoundHH 
(HH  
)HH  !
;HH! "
}II 
varKK 
roleKK 
=KK 
awaitKK 
_contextKK %
.KK% &
RoleKK& *
.KK* +
	FindAsyncKK+ 4
(KK4 5
idKK5 7
)KK7 8
;KK8 9
ifLL 
(LL 
roleLL 
==LL 
nullLL 
)LL 
{MM 
returnNN 
NotFoundNN 
(NN  
)NN  !
;NN! "
}OO 
returnPP 
ViewPP 
(PP 
rolePP 
)PP 
;PP 
}QQ 	
[VV 	
HttpPostVV	 
]VV 
[WW 	$
ValidateAntiForgeryTokenWW	 !
]WW! "
publicXX 
asyncXX 
TaskXX 
<XX 
IActionResultXX '
>XX' (
EditXX) -
(XX- .
intXX. 1
idXX2 4
,XX4 5
[XX6 7
BindXX7 ;
(XX; <
$strXX< J
)XXJ K
]XXK L
RoleXXM Q
roleXXR V
)XXV W
{YY 	
ifZZ 
(ZZ 
idZZ 
!=ZZ 
roleZZ 
.ZZ 
RoleIdZZ !
)ZZ! "
{[[ 
return\\ 
NotFound\\ 
(\\  
)\\  !
;\\! "
}]] 
if__ 
(__ 

ModelState__ 
.__ 
IsValid__ "
)__" #
{`` 
tryaa 
{bb 
_contextcc 
.cc 
Updatecc #
(cc# $
rolecc$ (
)cc( )
;cc) *
awaitdd 
_contextdd "
.dd" #
SaveChangesAsyncdd# 3
(dd3 4
)dd4 5
;dd5 6
}ee 
catchff 
(ff (
DbUpdateConcurrencyExceptionff 3
)ff3 4
{gg 
ifhh 
(hh 
!hh 

RoleExistshh #
(hh# $
rolehh$ (
.hh( )
RoleIdhh) /
)hh/ 0
)hh0 1
{ii 
returnjj 
NotFoundjj '
(jj' (
)jj( )
;jj) *
}kk 
elsell 
{mm 
thrownn 
;nn 
}oo 
}pp 
returnqq 
RedirectToActionqq '
(qq' (
nameofqq( .
(qq. /
Indexqq/ 4
)qq4 5
)qq5 6
;qq6 7
}rr 
returnss 
Viewss 
(ss 
roless 
)ss 
;ss 
}tt 	
publicww 
asyncww 
Taskww 
<ww 
IActionResultww '
>ww' (
Deleteww) /
(ww/ 0
intww0 3
?ww3 4
idww5 7
)ww7 8
{xx 	
ifyy 
(yy 
idyy 
==yy 
nullyy 
)yy 
{zz 
return{{ 
NotFound{{ 
({{  
){{  !
;{{! "
}|| 
var~~ 
role~~ 
=~~ 
await~~ 
_context~~ %
.~~% &
Role~~& *
. 
FirstOrDefaultAsync $
($ %
m% &
=>' )
m* +
.+ ,
RoleId, 2
==3 5
id6 8
)8 9
;9 :
if
ÄÄ 
(
ÄÄ 
role
ÄÄ 
==
ÄÄ 
null
ÄÄ 
)
ÄÄ 
{
ÅÅ 
return
ÇÇ 
NotFound
ÇÇ 
(
ÇÇ  
)
ÇÇ  !
;
ÇÇ! "
}
ÉÉ 
return
ÖÖ 
View
ÖÖ 
(
ÖÖ 
role
ÖÖ 
)
ÖÖ 
;
ÖÖ 
}
ÜÜ 	
[
ââ 	
HttpPost
ââ	 
,
ââ 

ActionName
ââ 
(
ââ 
$str
ââ &
)
ââ& '
]
ââ' (
[
ää 	&
ValidateAntiForgeryToken
ää	 !
]
ää! "
public
ãã 
async
ãã 
Task
ãã 
<
ãã 
IActionResult
ãã '
>
ãã' (
DeleteConfirmed
ãã) 8
(
ãã8 9
int
ãã9 <
id
ãã= ?
)
ãã? @
{
åå 	
var
çç 
role
çç 
=
çç 
await
çç 
_context
çç %
.
çç% &
Role
çç& *
.
çç* +
	FindAsync
çç+ 4
(
çç4 5
id
çç5 7
)
çç7 8
;
çç8 9
_context
éé 
.
éé 
Role
éé 
.
éé 
Remove
éé  
(
éé  !
role
éé! %
)
éé% &
;
éé& '
await
èè 
_context
èè 
.
èè 
SaveChangesAsync
èè +
(
èè+ ,
)
èè, -
;
èè- .
return
êê 
RedirectToAction
êê #
(
êê# $
nameof
êê$ *
(
êê* +
Index
êê+ 0
)
êê0 1
)
êê1 2
;
êê2 3
}
ëë 	
private
ìì 
bool
ìì 

RoleExists
ìì 
(
ìì  
int
ìì  #
id
ìì$ &
)
ìì& '
{
îî 	
return
ïï 
_context
ïï 
.
ïï 
Role
ïï  
.
ïï  !
Any
ïï! $
(
ïï$ %
e
ïï% &
=>
ïï' )
e
ïï* +
.
ïï+ ,
RoleId
ïï, 2
==
ïï3 5
id
ïï6 8
)
ïï8 9
;
ïï9 :
}
ññ 	
}
óó 
}òò Ÿ^
åE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Controllers\StockEntriesController.cs
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
.$ %
Controllers% 0
{ 
[ 
	Authorize 
( 
Roles 
= 
$str 
) 
]  
public 

class "
StockEntriesController '
:( )

Controller* 4
{ 
private 
readonly 
EcommerceContext )
_context* 2
;2 3
public "
StockEntriesController %
(% &
EcommerceContext& 6
context7 >
)> ?
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
IActionResult '
>' (
Index) .
(. /
)/ 0
{ 	
var 
ecommerceContext  
=! "
_context# +
.+ ,

StockEntry, 6
.6 7
Include7 >
(> ?
s? @
=>A C
sD E
.E F
ProductF M
)M N
.N O
OrderByO V
(V W
xW X
=>Y [
x\ ]
.] ^
RemainingStock^ l
)l m
;m n
return 
View 
( 
await 
ecommerceContext .
.. /
ToListAsync/ :
(: ;
); <
)< =
;= >
} 	
public 
async 
Task 
< 
IActionResult '
>' (
Details) 0
(0 1
string1 7
id8 :
): ;
{   	
if!! 
(!! 
id!! 
==!! 
null!! 
)!! 
{"" 
return## 
NotFound## 
(##  
)##  !
;##! "
}$$ 
var&& 

stockEntry&& 
=&& 
await&& "
_context&&# +
.&&+ ,

StockEntry&&, 6
.'' 
Include'' 
('' 
s'' 
=>'' 
s'' 
.''  
Product''  '
)''' (
.(( 
FirstOrDefaultAsync(( $
((($ %
m((% &
=>((' )
m((* +
.((+ ,
StockId((, 3
==((4 6
id((7 9
)((9 :
;((: ;
if)) 
()) 

stockEntry)) 
==)) 
null)) "
)))" #
{** 
return++ 
NotFound++ 
(++  
)++  !
;++! "
},, 
return.. 
View.. 
(.. 

stockEntry.. "
).." #
;..# $
}// 	
public22 
IActionResult22 
Create22 #
(22# $
)22$ %
{33 	
ViewData44 
[44 
$str44  
]44  !
=44" #
new44$ '

SelectList44( 2
(442 3
_context443 ;
.44; <
Product44< C
,44C D
$str44E P
,44P Q
$str44R _
)44_ `
;44` a
return55 
View55 
(55 
)55 
;55 
}66 	
[;; 	
HttpPost;;	 
];; 
[<< 	$
ValidateAntiForgeryToken<<	 !
]<<! "
public== 
async== 
Task== 
<== 
IActionResult== '
>==' (
Create==) /
(==/ 0
[==0 1
Bind==1 5
(==5 6
$str==6 P
)==P Q
]==Q R

StockEntry==S ]

stockEntry==^ h
)==h i
{>> 	
if?? 
(?? 

ModelState?? 
.?? 
IsValid?? "
)??" #
{@@ 

stockEntryAA 
.AA 
StockIdAA "
=AA# $
GuidAA% )
.AA) *
NewGuidAA* 1
(AA1 2
)AA2 3
.AA3 4
ToStringAA4 <
(AA< =
)AA= >
;AA> ?
_contextBB 
.BB 
AddBB 
(BB 

stockEntryBB '
)BB' (
;BB( )
awaitCC 
_contextCC 
.CC 
SaveChangesAsyncCC /
(CC/ 0
)CC0 1
;CC1 2
returnDD 
RedirectToActionDD '
(DD' (
nameofDD( .
(DD. /
IndexDD/ 4
)DD4 5
)DD5 6
;DD6 7
}EE 
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
,FF_ `

stockEntryFFa k
.FFk l
	ProductIdFFl u
)FFu v
;FFv w
returnGG 
ViewGG 
(GG 

stockEntryGG "
)GG" #
;GG# $
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
varRR 

stockEntryRR 
=RR 
awaitRR "
_contextRR# +
.RR+ ,

StockEntryRR, 6
.RR6 7
	FindAsyncRR7 @
(RR@ A
idRRA C
)RRC D
;RRD E
ifSS 
(SS 

stockEntrySS 
==SS 
nullSS "
)SS" #
{TT 
returnUU 
NotFoundUU 
(UU  
)UU  !
;UU! "
}VV 
ViewDataWW 
[WW 
$strWW  
]WW  !
=WW" #
newWW$ '

SelectListWW( 2
(WW2 3
_contextWW3 ;
.WW; <
ProductWW< C
,WWC D
$strWWE P
,WWP Q
$strWWR _
,WW_ `

stockEntryWWa k
.WWk l
	ProductIdWWl u
)WWu v
;WWv w
returnXX 
ViewXX 
(XX 

stockEntryXX "
)XX" #
;XX# $
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
>``' (
Edit``) -
(``- .
string``. 4
id``5 7
,``7 8
[``9 :
Bind``: >
(``> ?
$str``? a
)``a b
]``b c

StockEntry``d n

stockEntry``o y
)``y z
{aa 	
ifbb 
(bb 
idbb 
!=bb 

stockEntrybb  
.bb  !
StockIdbb! (
)bb( )
{cc 
returndd 
NotFounddd 
(dd  
)dd  !
;dd! "
}ee 
ifgg 
(gg 

ModelStategg 
.gg 
IsValidgg "
)gg" #
{hh 
tryii 
{jj 
_contextkk 
.kk 
Updatekk #
(kk# $

stockEntrykk$ .
)kk. /
;kk/ 0
awaitll 
_contextll "
.ll" #
SaveChangesAsyncll# 3
(ll3 4
)ll4 5
;ll5 6
}mm 
catchnn 
(nn (
DbUpdateConcurrencyExceptionnn 3
)nn3 4
{oo 
ifpp 
(pp 
!pp 
StockEntryExistspp )
(pp) *

stockEntrypp* 4
.pp4 5
StockIdpp5 <
)pp< =
)pp= >
{qq 
returnrr 
NotFoundrr '
(rr' (
)rr( )
;rr) *
}ss 
elsett 
{uu 
throwvv 
;vv 
}ww 
}xx 
returnyy 
RedirectToActionyy '
(yy' (
nameofyy( .
(yy. /
Indexyy/ 4
)yy4 5
)yy5 6
;yy6 7
}zz 
ViewData{{ 
[{{ 
$str{{  
]{{  !
={{" #
new{{$ '

SelectList{{( 2
({{2 3
_context{{3 ;
.{{; <
Product{{< C
,{{C D
$str{{E P
,{{P Q
$str{{R _
,{{_ `

stockEntry{{a k
.{{k l
	ProductId{{l u
){{u v
;{{v w
return|| 
View|| 
(|| 

stockEntry|| "
)||" #
;||# $
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
áá 

stockEntry
áá 
=
áá 
await
áá "
_context
áá# +
.
áá+ ,

StockEntry
áá, 6
.
àà 
Include
àà 
(
àà 
s
àà 
=>
àà 
s
àà 
.
àà  
Product
àà  '
)
àà' (
.
ââ !
FirstOrDefaultAsync
ââ $
(
ââ$ %
m
ââ% &
=>
ââ' )
m
ââ* +
.
ââ+ ,
StockId
ââ, 3
==
ââ4 6
id
ââ7 9
)
ââ9 :
;
ââ: ;
if
ää 
(
ää 

stockEntry
ää 
==
ää 
null
ää "
)
ää" #
{
ãã 
return
åå 
NotFound
åå 
(
åå  
)
åå  !
;
åå! "
}
çç 
return
èè 
View
èè 
(
èè 

stockEntry
èè "
)
èè" #
;
èè# $
}
êê 	
[
ìì 	
HttpPost
ìì	 
,
ìì 

ActionName
ìì 
(
ìì 
$str
ìì &
)
ìì& '
]
ìì' (
[
îî 	&
ValidateAntiForgeryToken
îî	 !
]
îî! "
public
ïï 
async
ïï 
Task
ïï 
<
ïï 
IActionResult
ïï '
>
ïï' (
DeleteConfirmed
ïï) 8
(
ïï8 9
string
ïï9 ?
id
ïï@ B
)
ïïB C
{
ññ 	
var
óó 

stockEntry
óó 
=
óó 
await
óó "
_context
óó# +
.
óó+ ,

StockEntry
óó, 6
.
óó6 7
	FindAsync
óó7 @
(
óó@ A
id
óóA C
)
óóC D
;
óóD E
_context
òò 
.
òò 

StockEntry
òò 
.
òò  
Remove
òò  &
(
òò& '

stockEntry
òò' 1
)
òò1 2
;
òò2 3
await
ôô 
_context
ôô 
.
ôô 
SaveChangesAsync
ôô +
(
ôô+ ,
)
ôô, -
;
ôô- .
return
öö 
RedirectToAction
öö #
(
öö# $
nameof
öö$ *
(
öö* +
Index
öö+ 0
)
öö0 1
)
öö1 2
;
öö2 3
}
õõ 	
private
ùù 
bool
ùù 
StockEntryExists
ùù %
(
ùù% &
string
ùù& ,
id
ùù- /
)
ùù/ 0
{
ûû 	
return
üü 
_context
üü 
.
üü 

StockEntry
üü &
.
üü& '
Any
üü' *
(
üü* +
e
üü+ ,
=>
üü- /
e
üü0 1
.
üü1 2
StockId
üü2 9
==
üü: <
id
üü= ?
)
üü? @
;
üü@ A
}
†† 	
}
¢¢ 
}££ èd
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
{ 	
{ 
var 
currentClient !
=" # 
_httpContextAccessor$ 8
.8 9
HttpContext9 D
.D E
UserE I
.I J
	FindFirstJ S
(S T

ClaimTypesT ^
.^ _
NameIdentifier_ m
)m n
.n o
Valueo t
;t u
var 
ecommerceContext $
=% &
_context' /
./ 0
User0 4
.4 5
Where5 :
(: ;
y; <
=>= ?
y@ A
.A B
IdB D
==E G
currentClientH U
)U V
.V W
IncludeW ^
(^ _
u_ `
=>a c
ud e
.e f
Rolef j
)j k
;k l
return   
View   
(   
await   !
ecommerceContext  " 2
.  2 3
ToListAsync  3 >
(  > ?
)  ? @
)  @ A
;  A B
}!! 
}"" 	
public%% 
async%% 
Task%% 
<%% 
IActionResult%% '
>%%' (
Details%%) 0
(%%0 1
string%%1 7
id%%8 :
)%%: ;
{&& 	
if'' 
('' 
id'' 
=='' 
null'' 
)'' 
{(( 
return)) 
NotFound)) 
())  
)))  !
;))! "
}** 
var,, 
user,, 
=,, 
await,, 
_context,, %
.,,% &
User,,& *
.-- 
Include-- 
(-- 
u-- 
=>-- 
u-- 
.--  
Role--  $
)--$ %
... 
FirstOrDefaultAsync.. $
(..$ %
m..% &
=>..' )
m..* +
...+ ,
Id.., .
==../ 1
id..2 4
)..4 5
;..5 6
if// 
(// 
user// 
==// 
null// 
)// 
{00 
return11 
NotFound11 
(11  
)11  !
;11! "
}22 
return44 
View44 
(44 
user44 
)44 
;44 
}55 	
[77 	
	Authorize77	 
(77 
Roles77 
=77 
$str77 "
)77" #
]77# $
public88 
IActionResult88 
Create88 #
(88# $
)88$ %
{99 	
ViewData:: 
[:: 
$str:: 
]:: 
=::  
new::! $

SelectList::% /
(::/ 0
_context::0 8
.::8 9
Role::9 =
,::= >
$str::? G
,::G H
$str::I P
)::P Q
;::Q R
return;; 
View;; 
(;; 
);; 
;;; 
}<< 	
[AA 	
	AuthorizeAA	 
(AA 
RolesAA 
=AA 
$strAA "
)AA" #
]AA# $
[BB 	
HttpPostBB	 
]BB 
[CC 	$
ValidateAntiForgeryTokenCC	 !
]CC! "
publicDD 
asyncDD 
TaskDD 
<DD 
IActionResultDD '
>DD' (
CreateDD) /
(DD/ 0
[DD0 1
BindDD1 5
(DD5 6
$strDD6 Y
)DDY Z
]DDZ [
UserDD\ `
userDDa e
)DDe f
{EE 	
ifFF 
(FF 

ModelStateFF 
.FF 
IsValidFF "
)FF" #
{GG 
_contextHH 
.HH 
AddHH 
(HH 
userHH !
)HH! "
;HH" #
awaitII 
_contextII 
.II 
SaveChangesAsyncII /
(II/ 0
)II0 1
;II1 2
returnJJ 
RedirectToActionJJ '
(JJ' (
nameofJJ( .
(JJ. /
IndexJJ/ 4
)JJ4 5
)JJ5 6
;JJ6 7
}KK 
ViewDataLL 
[LL 
$strLL 
]LL 
=LL  
newLL! $

SelectListLL% /
(LL/ 0
_contextLL0 8
.LL8 9
RoleLL9 =
,LL= >
$strLL? G
,LLG H
$strLLI P
,LLP Q
userLLR V
.LLV W
RoleIdLLW ]
)LL] ^
;LL^ _
returnMM 
ViewMM 
(MM 
userMM 
)MM 
;MM 
}NN 	
publicQQ 
asyncQQ 
TaskQQ 
<QQ 
IActionResultQQ '
>QQ' (
EditQQ) -
(QQ- .
stringQQ. 4
idQQ5 7
)QQ7 8
{RR 	
ifSS 
(SS 
idSS 
==SS 
nullSS 
)SS 
{TT 
returnUU 
NotFoundUU 
(UU  
)UU  !
;UU! "
}VV 
varXX 
userXX 
=XX 
awaitXX 
_contextXX %
.XX% &
UserXX& *
.XX* +
	FindAsyncXX+ 4
(XX4 5
idXX5 7
)XX7 8
;XX8 9
ifYY 
(YY 
userYY 
==YY 
nullYY 
)YY 
{ZZ 
return[[ 
NotFound[[ 
([[  
)[[  !
;[[! "
}\\ 
ViewData]] 
[]] 
$str]] 
]]] 
=]]  
new]]! $

SelectList]]% /
(]]/ 0
_context]]0 8
.]]8 9
Role]]9 =
,]]= >
$str]]? G
,]]G H
$str]]I P
,]]P Q
user]]R V
.]]V W
RoleId]]W ]
)]]] ^
;]]^ _
return^^ 
View^^ 
(^^ 
user^^ 
)^^ 
;^^ 
}__ 	
[dd 	
HttpPostdd	 
]dd 
[ee 	$
ValidateAntiForgeryTokenee	 !
]ee! "
publicff 
asyncff 
Taskff 
<ff 
IActionResultff '
>ff' (
Editff) -
(ff- .
stringff. 4
idff5 7
,ff7 8
[ff9 :
Bindff: >
(ff> ?
$strff? b
)ffb c
]ffc d
Userffe i
userffj n
)ffn o
{gg 	
ifhh 
(hh 
idhh 
!=hh 
userhh 
.hh 
Idhh 
)hh 
{ii 
returnjj 
NotFoundjj 
(jj  
)jj  !
;jj! "
}kk 
ifmm 
(mm 

ModelStatemm 
.mm 
IsValidmm "
)mm" #
{nn 
tryoo 
{pp 
_contextqq 
.qq 
Updateqq #
(qq# $
userqq$ (
)qq( )
;qq) *
awaitrr 
_contextrr "
.rr" #
SaveChangesAsyncrr# 3
(rr3 4
)rr4 5
;rr5 6
}ss 
catchtt 
(tt (
DbUpdateConcurrencyExceptiontt 3
)tt3 4
{uu 
ifvv 
(vv 
!vv 

UserExistsvv #
(vv# $
uservv$ (
.vv( )
Idvv) +
)vv+ ,
)vv, -
{ww 
returnxx 
NotFoundxx '
(xx' (
)xx( )
;xx) *
}yy 
elsezz 
{{{ 
throw|| 
;|| 
}}} 
}~~ 
return 
RedirectToAction '
(' (
nameof( .
(. /
Index/ 4
)4 5
)5 6
;6 7
}
ÄÄ 
ViewData
ÅÅ 
[
ÅÅ 
$str
ÅÅ 
]
ÅÅ 
=
ÅÅ  
new
ÅÅ! $

SelectList
ÅÅ% /
(
ÅÅ/ 0
_context
ÅÅ0 8
.
ÅÅ8 9
Role
ÅÅ9 =
,
ÅÅ= >
$str
ÅÅ? G
,
ÅÅG H
$str
ÅÅI P
,
ÅÅP Q
user
ÅÅR V
.
ÅÅV W
RoleId
ÅÅW ]
)
ÅÅ] ^
;
ÅÅ^ _
return
ÇÇ 
View
ÇÇ 
(
ÇÇ 
user
ÇÇ 
)
ÇÇ 
;
ÇÇ 
}
ÉÉ 	
[
ÜÜ 	
	Authorize
ÜÜ	 
(
ÜÜ 
Roles
ÜÜ 
=
ÜÜ 
$str
ÜÜ "
)
ÜÜ" #
]
ÜÜ# $
public
áá 
async
áá 
Task
áá 
<
áá 
IActionResult
áá '
>
áá' (
Delete
áá) /
(
áá/ 0
string
áá0 6
id
áá7 9
)
áá9 :
{
àà 	
if
ââ 
(
ââ 
id
ââ 
==
ââ 
null
ââ 
)
ââ 
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
åå 
var
éé 
user
éé 
=
éé 
await
éé 
_context
éé %
.
éé% &
User
éé& *
.
èè 
Include
èè 
(
èè 
u
èè 
=>
èè 
u
èè 
.
èè  
Role
èè  $
)
èè$ %
.
êê !
FirstOrDefaultAsync
êê $
(
êê$ %
m
êê% &
=>
êê' )
m
êê* +
.
êê+ ,
Id
êê, .
==
êê/ 1
id
êê2 4
)
êê4 5
;
êê5 6
if
ëë 
(
ëë 
user
ëë 
==
ëë 
null
ëë 
)
ëë 
{
íí 
return
ìì 
NotFound
ìì 
(
ìì  
)
ìì  !
;
ìì! "
}
îî 
return
ññ 
View
ññ 
(
ññ 
user
ññ 
)
ññ 
;
ññ 
}
óó 	
[
öö 	
	Authorize
öö	 
(
öö 
Roles
öö 
=
öö 
$str
öö "
)
öö" #
]
öö# $
[
õõ 	
HttpPost
õõ	 
,
õõ 

ActionName
õõ 
(
õõ 
$str
õõ &
)
õõ& '
]
õõ' (
[
úú 	&
ValidateAntiForgeryToken
úú	 !
]
úú! "
public
ùù 
async
ùù 
Task
ùù 
<
ùù 
IActionResult
ùù '
>
ùù' (
DeleteConfirmed
ùù) 8
(
ùù8 9
string
ùù9 ?
id
ùù@ B
)
ùùB C
{
ûû 	
var
üü 
user
üü 
=
üü 
await
üü 
_context
üü %
.
üü% &
User
üü& *
.
üü* +
	FindAsync
üü+ 4
(
üü4 5
id
üü5 7
)
üü7 8
;
üü8 9
_context
†† 
.
†† 
User
†† 
.
†† 
Remove
††  
(
††  !
user
††! %
)
††% &
;
††& '
await
°° 
_context
°° 
.
°° 
SaveChangesAsync
°° +
(
°°+ ,
)
°°, -
;
°°- .
return
¢¢ 
RedirectToAction
¢¢ #
(
¢¢# $
nameof
¢¢$ *
(
¢¢* +
Index
¢¢+ 0
)
¢¢0 1
)
¢¢1 2
;
¢¢2 3
}
££ 	
private
•• 
bool
•• 

UserExists
•• 
(
••  
string
••  &
id
••' )
)
••) *
{
¶¶ 	
return
ßß 
_context
ßß 
.
ßß 
User
ßß  
.
ßß  !
Any
ßß! $
(
ßß$ %
e
ßß% &
=>
ßß' )
e
ßß* +
.
ßß+ ,
Id
ßß, .
==
ßß/ 1
id
ßß2 4
)
ßß4 5
;
ßß5 6
}
®® 	
}
©© 
}™™ ì§
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
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
.$ %
Models% +
{ 
public 

partial 
class 
Category !
{ 
public 
Category 
( 
) 
{		 	
ProductCategory

 
=

 
new

 !
HashSet

" )
<

) *
ProductCategory

* 9
>

9 :
(

: ;
)

; <
;

< =
} 	
public 
string 

CategoryId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
CategoryName "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
virtual 
ICollection "
<" #
ProductCategory# 2
>2 3
ProductCategory4 C
{D E
getF I
;I J
setK N
;N O
}P Q
} 
} ˝ 
ÅE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Models\EcommerceContext.cs
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
.$ %
Models% +
{ 
public		 

partial		 
class		 
EcommerceContext		 )
:		* +
IdentityDbContext		, =
<		= >
IdentityUser		> J
>		J K
{

 
public 
EcommerceContext 
(  
)  !
{ 	
} 	
public 
EcommerceContext 
(  
DbContextOptions  0
<0 1
EcommerceContext1 A
>A B
optionsC J
)J K
: 
base 
( 
options 
) 
{ 	
} 	
public 
virtual 
DbSet 
< 
Category %
>% &
Category' /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
public 
virtual 
DbSet 
< 
Order "
>" #
Order$ )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
public 
virtual 
DbSet 
< 
Product $
>$ %
Product& -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
public 
virtual 
DbSet 
< 
ProductCategory ,
>, -
ProductCategory. =
{> ?
get@ C
;C D
setE H
;H I
}J K
public 
virtual 
DbSet 
< 
ProductOrder )
>) *
ProductOrder+ 7
{8 9
get: =
;= >
set? B
;B C
}D E
public 
virtual 
DbSet 
< 
Role !
>! "
Role# '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
virtual 
DbSet 
< 

StockEntry '
>' (

StockEntry) 3
{4 5
get6 9
;9 :
set; >
;> ?
}@ A
public 
virtual 
DbSet 
< 
User !
>! "
User# '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
	protected 
override 
void 
OnConfiguring  -
(- .#
DbContextOptionsBuilder. E
optionsBuilderF T
)T U
{ 	
if   
(   
!   
optionsBuilder   
.    
IsConfigured    ,
)  , -
{!! 
var## 

jsonString## 
=##  
System##! '
.##' (
IO##( *
.##* +
File##+ /
.##/ 0
ReadAllText##0 ;
(##; <
$str##< U
)##U V
;##V W
var$$ 
	myJObject$$ 
=$$ 
JObject$$  '
.$$' (
Parse$$( -
($$- .

jsonString$$. 8
)$$8 9
;$$9 :
var%% 
connectionString%% $
=%%% &

@myJObject%%' 1
.%%1 2
SelectToken%%2 =
(%%= >
$str%%> L
)%%L M
.%%M N
Value%%N S
<%%S T
string%%T Z
>%%Z [
(%%[ \
)%%\ ]
;%%] ^
optionsBuilder&& 
.&& 
UseSqlServer&& +
(&&+ ,
connectionString&&, <
)&&< =
;&&= >
}'' 
}(( 	
	protected** 
override** 
void** 
OnModelCreating**  /
(**/ 0
ModelBuilder**0 <
modelBuilder**= I
)**I J
{++ 	
base,, 
.,, 
OnModelCreating,,  
(,,  !
modelBuilder,,! -
),,- .
;,,. /
modelBuilder.. 
... 
HasAnnotation.. &
(..& '
$str..' 7
,..7 8
$str..9 P
)..P Q
;..Q R
modelBuilder00 
.00 
Entity00 
<00  
Category00  (
>00( )
(00) *
entity00* 0
=>001 3
{11 
entity22 
.22 
Property22 
(22  
e22  !
=>22" $
e22% &
.22& '

CategoryId22' 1
)221 2
.33 
HasColumnName33 "
(33" #
$str33# 0
)330 1
.44 
HasMaxLength44 !
(44! "
$num44" %
)44% &
.55 
ValueGeneratedNever55 (
(55( )
)55) *
;55* +
entity77 
.77 
Property77 
(77  
e77  !
=>77" $
e77% &
.77& '
CategoryName77' 3
)773 4
.88 

IsRequired88 
(88  
)88  !
.99 
HasColumnName99 "
(99" #
$str99# 2
)992 3
.:: 
HasMaxLength:: !
(::! "
$num::" $
)::$ %
.;; 
	IsUnicode;; 
(;; 
false;; $
);;$ %
;;;% &
}<< 
)<< 
;<< 
modelBuilder>> 
.>> 
Entity>> 
<>>  
Order>>  %
>>>% &
(>>& '
entity>>' -
=>>>. 0
{?? 
entity@@ 
.@@ 
Property@@ 
(@@  
e@@  !
=>@@" $
e@@% &
.@@& '
OrderId@@' .
)@@. /
.AA 
HasColumnNameAA "
(AA" #
$strAA# -
)AA- .
.BB 
HasMaxLengthBB !
(BB! "
$numBB" %
)BB% &
.CC 
ValueGeneratedNeverCC (
(CC( )
)CC) *
;CC* +
entityEE 
.EE 
PropertyEE 
(EE  
eEE  !
=>EE" $
eEE% &
.EE& '
ClientIdEE' /
)EE/ 0
.FF 

IsRequiredFF 
(FF  
)FF  !
.GG 
HasColumnNameGG "
(GG" #
$strGG# .
)GG. /
.HH 
HasMaxLengthHH !
(HH! "
$numHH" %
)HH% &
;HH& '
entityJJ 
.JJ 
PropertyJJ 
(JJ  
eJJ  !
=>JJ" $
eJJ% &
.JJ& '
HasBeenPlacedJJ' 4
)JJ4 5
.JJ5 6
HasColumnNameJJ6 C
(JJC D
$strJJD U
)JJU V
;JJV W
entityLL 
.LL 
PropertyLL 
(LL  
eLL  !
=>LL" $
eLL% &
.LL& '
HasBeenConfirmedLL' 7
)LL7 8
.LL8 9
HasColumnNameLL9 F
(LLF G
$strLLG [
)LL[ \
;LL\ ]
entityNN 
.NN 
PropertyNN 
(NN  
eNN  !
=>NN" $
eNN% &
.NN& '
QuantityNN' /
)NN/ 0
.NN0 1
HasColumnNameNN1 >
(NN> ?
$strNN? I
)NNI J
;NNJ K
entityPP 
.PP 
HasOnePP 
(PP 
dPP 
=>PP  "
dPP# $
.PP$ %
ClientPP% +
)PP+ ,
.QQ 
WithManyQQ 
(QQ 
pQQ 
=>QQ  "
pQQ# $
.QQ$ %
OrderQQ% *
)QQ* +
.RR 
HasForeignKeyRR "
(RR" #
dRR# $
=>RR% '
dRR( )
.RR) *
ClientIdRR* 2
)RR2 3
.SS 
OnDeleteSS 
(SS 
DeleteBehaviorSS ,
.SS, -
ClientSetNullSS- :
)SS: ;
.TT 
HasConstraintNameTT &
(TT& '
$strTT' 2
)TT2 3
;TT3 4
}UU 
)UU 
;UU 
modelBuilderWW 
.WW 
EntityWW 
<WW  
ProductWW  '
>WW' (
(WW( )
entityWW) /
=>WW0 2
{XX 
entityYY 
.YY 
PropertyYY 
(YY  
eYY  !
=>YY" $
eYY% &
.YY& '
	ProductIdYY' 0
)YY0 1
.ZZ 
HasColumnNameZZ "
(ZZ" #
$strZZ# /
)ZZ/ 0
.[[ 
HasMaxLength[[ !
([[! "
$num[[" %
)[[% &
.\\ 
ValueGeneratedNever\\ (
(\\( )
)\\) *
;\\* +
entity^^ 
.^^ 
Property^^ 
(^^  
e^^  !
=>^^" $
e^^% &
.^^& '
Price^^' ,
)^^, -
.__ 
HasColumnName__ "
(__" #
$str__# *
)__* +
.`` 
HasColumnType`` "
(``" #
$str``# 3
)``3 4
;``4 5
entitybb 
.bb 
Propertybb 
(bb  
ebb  !
=>bb" $
ebb% &
.bb& '
ProductDescriptionbb' 9
)bb9 :
.cc 

IsRequiredcc 
(cc  
)cc  !
.dd 
HasColumnNamedd "
(dd" #
$strdd# 8
)dd8 9
.ee 
HasMaxLengthee !
(ee! "
$numee" %
)ee% &
.ff 
	IsUnicodeff 
(ff 
falseff $
)ff$ %
;ff% &
entityhh 
.hh 
Propertyhh 
(hh  
ehh  !
=>hh" $
ehh% &
.hh& '
ProductNamehh' 2
)hh2 3
.ii 

IsRequiredii 
(ii  
)ii  !
.jj 
HasColumnNamejj "
(jj" #
$strjj# 1
)jj1 2
.kk 
HasMaxLengthkk !
(kk! "
$numkk" $
)kk$ %
.ll 
	IsUnicodell 
(ll 
falsell $
)ll$ %
;ll% &
entitynn 
.nn 
Propertynn 
(nn  
enn  !
=>nn" $
enn% &
.nn& '
ProductPicturenn' 5
)nn5 6
.oo 

IsRequiredoo 
(oo  
)oo  !
.pp 
HasColumnNamepp "
(pp" #
$strpp# 4
)pp4 5
.qq 
HasMaxLengthqq !
(qq! "
$numqq" %
)qq% &
.rr 
	IsUnicoderr 
(rr 
falserr $
)rr$ %
;rr% &
entityss 
.ss 
Propertyss 
(ss  
ess  !
=>ss" $
ess% &
.ss& '
SpecificationFiless' 8
)ss8 9
.tt 

IsRequiredtt 
(tt  
)tt  !
.uu 
HasColumnNameuu "
(uu" #
$struu# 7
)uu7 8
.vv 
HasMaxLengthvv !
(vv! "
$numvv" %
)vv% &
.ww 
	IsUnicodeww 
(ww 
falseww $
)ww$ %
;ww% &
}xx 
)xx 
;xx 
modelBuilderzz 
.zz 
Entityzz 
<zz  
ProductCategoryzz  /
>zz/ 0
(zz0 1
entityzz1 7
=>zz8 :
{{{ 
entity|| 
.|| 
HasKey|| 
(|| 
e|| 
=>||  "
e||# $
.||$ %
IdProductCategory||% 6
)||6 7
.}} 
HasName}} 
(}} 
$str}} 4
)}}4 5
;}}5 6
entity 
. 
ToTable 
( 
$str 1
)1 2
;2 3
entity
ÅÅ 
.
ÅÅ 
Property
ÅÅ 
(
ÅÅ  
e
ÅÅ  !
=>
ÅÅ" $
e
ÅÅ% &
.
ÅÅ& '
IdProductCategory
ÅÅ' 8
)
ÅÅ8 9
.
ÇÇ 
HasMaxLength
ÇÇ !
(
ÇÇ! "
$num
ÇÇ" %
)
ÇÇ% &
.
ÉÉ !
ValueGeneratedNever
ÉÉ (
(
ÉÉ( )
)
ÉÉ) *
;
ÉÉ* +
entity
ÖÖ 
.
ÖÖ 
Property
ÖÖ 
(
ÖÖ  
e
ÖÖ  !
=>
ÖÖ" $
e
ÖÖ% &
.
ÖÖ& '

CategoryId
ÖÖ' 1
)
ÖÖ1 2
.
ÜÜ 

IsRequired
ÜÜ 
(
ÜÜ  
)
ÜÜ  !
.
áá 
HasColumnName
áá "
(
áá" #
$str
áá# 0
)
áá0 1
.
àà 
HasMaxLength
àà !
(
àà! "
$num
àà" %
)
àà% &
;
àà& '
entity
ää 
.
ää 
Property
ää 
(
ää  
e
ää  !
=>
ää" $
e
ää% &
.
ää& '
	ProductId
ää' 0
)
ää0 1
.
ãã 

IsRequired
ãã 
(
ãã  
)
ãã  !
.
åå 
HasColumnName
åå "
(
åå" #
$str
åå# /
)
åå/ 0
.
çç 
HasMaxLength
çç !
(
çç! "
$num
çç" %
)
çç% &
;
çç& '
entity
èè 
.
èè 
HasOne
èè 
(
èè 
d
èè 
=>
èè  "
d
èè# $
.
èè$ %
Category
èè% -
)
èè- .
.
êê 
WithMany
êê 
(
êê 
p
êê 
=>
êê  "
p
êê# $
.
êê$ %
ProductCategory
êê% 4
)
êê4 5
.
ëë 
HasForeignKey
ëë "
(
ëë" #
d
ëë# $
=>
ëë% '
d
ëë( )
.
ëë) *

CategoryId
ëë* 4
)
ëë4 5
.
íí 
OnDelete
íí 
(
íí 
DeleteBehavior
íí ,
.
íí, -
ClientSetNull
íí- :
)
íí: ;
.
ìì 
HasConstraintName
ìì &
(
ìì& '
$str
ìì' =
)
ìì= >
;
ìì> ?
entity
ïï 
.
ïï 
HasOne
ïï 
(
ïï 
d
ïï 
=>
ïï  "
d
ïï# $
.
ïï$ %
Product
ïï% ,
)
ïï, -
.
ññ 
WithMany
ññ 
(
ññ 
p
ññ 
=>
ññ  "
p
ññ# $
.
ññ$ %
ProductCategory
ññ% 4
)
ññ4 5
.
óó 
HasForeignKey
óó "
(
óó" #
d
óó# $
=>
óó% '
d
óó( )
.
óó) *
	ProductId
óó* 3
)
óó3 4
.
òò 
OnDelete
òò 
(
òò 
DeleteBehavior
òò ,
.
òò, -
ClientSetNull
òò- :
)
òò: ;
.
ôô 
HasConstraintName
ôô &
(
ôô& '
$str
ôô' =
)
ôô= >
;
ôô> ?
}
öö 
)
öö 
;
öö 
modelBuilder
úú 
.
úú 
Entity
úú 
<
úú  
ProductOrder
úú  ,
>
úú, -
(
úú- .
entity
úú. 4
=>
úú5 7
{
ùù 
entity
ûû 
.
ûû 
HasKey
ûû 
(
ûû 
e
ûû 
=>
ûû  "
e
ûû# $
.
ûû$ %
IdProductOrder
ûû% 3
)
ûû3 4
.
üü 
HasName
üü 
(
üü 
$str
üü 0
)
üü0 1
;
üü1 2
entity
°° 
.
°° 
Property
°° 
(
°°  
e
°°  !
=>
°°" $
e
°°% &
.
°°& '
IdProductOrder
°°' 5
)
°°5 6
.
¢¢ 
HasMaxLength
¢¢ !
(
¢¢! "
$num
¢¢" %
)
¢¢% &
.
££ !
ValueGeneratedNever
££ (
(
££( )
)
££) *
;
££* +
entity
•• 
.
•• 
Property
•• 
(
••  
e
••  !
=>
••" $
e
••% &
.
••& '
	OrderIdFk
••' 0
)
••0 1
.
¶¶ 

IsRequired
¶¶ 
(
¶¶  
)
¶¶  !
.
ßß 
HasColumnName
ßß "
(
ßß" #
$str
ßß# .
)
ßß. /
.
®® 
HasMaxLength
®® !
(
®®! "
$num
®®" %
)
®®% &
;
®®& '
entity
™™ 
.
™™ 
Property
™™ 
(
™™  
e
™™  !
=>
™™" $
e
™™% &
.
™™& '
ProductIdFk
™™' 2
)
™™2 3
.
´´ 

IsRequired
´´ 
(
´´  
)
´´  !
.
¨¨ 
HasColumnName
¨¨ "
(
¨¨" #
$str
¨¨# 0
)
¨¨0 1
.
≠≠ 
HasMaxLength
≠≠ !
(
≠≠! "
$num
≠≠" %
)
≠≠% &
;
≠≠& '
entity
ØØ 
.
ØØ 
HasOne
ØØ 
(
ØØ 
d
ØØ 
=>
ØØ  "
d
ØØ# $
.
ØØ$ %!
OrderIdFkNavigation
ØØ% 8
)
ØØ8 9
.
∞∞ 
WithMany
∞∞ 
(
∞∞ 
p
∞∞ 
=>
∞∞  "
p
∞∞# $
.
∞∞$ %
ProductOrder
∞∞% 1
)
∞∞1 2
.
±± 
HasForeignKey
±± "
(
±±" #
d
±±# $
=>
±±% '
d
±±( )
.
±±) *
	OrderIdFk
±±* 3
)
±±3 4
.
≤≤ 
OnDelete
≤≤ 
(
≤≤ 
DeleteBehavior
≤≤ ,
.
≤≤, -
ClientSetNull
≤≤- :
)
≤≤: ;
.
≥≥ 
HasConstraintName
≥≥ &
(
≥≥& '
$str
≥≥' :
)
≥≥: ;
;
≥≥; <
entity
µµ 
.
µµ 
HasOne
µµ 
(
µµ 
d
µµ 
=>
µµ  "
d
µµ# $
.
µµ$ %#
ProductIdFkNavigation
µµ% :
)
µµ: ;
.
∂∂ 
WithMany
∂∂ 
(
∂∂ 
p
∂∂ 
=>
∂∂  "
p
∂∂# $
.
∂∂$ %
ProductOrder
∂∂% 1
)
∂∂1 2
.
∑∑ 
HasForeignKey
∑∑ "
(
∑∑" #
d
∑∑# $
=>
∑∑% '
d
∑∑( )
.
∑∑) *
ProductIdFk
∑∑* 5
)
∑∑5 6
.
∏∏ 
OnDelete
∏∏ 
(
∏∏ 
DeleteBehavior
∏∏ ,
.
∏∏, -
ClientSetNull
∏∏- :
)
∏∏: ;
.
ππ 
HasConstraintName
ππ &
(
ππ& '
$str
ππ' :
)
ππ: ;
;
ππ; <
}
∫∫ 
)
∫∫ 
;
∫∫ 
modelBuilder
ºº 
.
ºº 
Entity
ºº 
<
ºº  
Role
ºº  $
>
ºº$ %
(
ºº% &
entity
ºº& ,
=>
ºº- /
{
ΩΩ 
entity
ææ 
.
ææ 
Property
ææ 
(
ææ  
e
ææ  !
=>
ææ" $
e
ææ% &
.
ææ& '
RoleId
ææ' -
)
ææ- .
.
øø 
HasColumnName
øø "
(
øø" #
$str
øø# ,
)
øø, -
.
¿¿ !
ValueGeneratedNever
¿¿ (
(
¿¿( )
)
¿¿) *
;
¿¿* +
entity
¬¬ 
.
¬¬ 
Property
¬¬ 
(
¬¬  
e
¬¬  !
=>
¬¬" $
e
¬¬% &
.
¬¬& '
Role1
¬¬' ,
)
¬¬, -
.
√√ 

IsRequired
√√ 
(
√√  
)
√√  !
.
ƒƒ 
HasColumnName
ƒƒ "
(
ƒƒ" #
$str
ƒƒ# )
)
ƒƒ) *
.
≈≈ 
HasMaxLength
≈≈ !
(
≈≈! "
$num
≈≈" $
)
≈≈$ %
.
∆∆ 
	IsUnicode
∆∆ 
(
∆∆ 
false
∆∆ $
)
∆∆$ %
;
∆∆% &
}
«« 
)
«« 
;
«« 
modelBuilder
…… 
.
…… 
Entity
…… 
<
……  

StockEntry
……  *
>
……* +
(
……+ ,
entity
……, 2
=>
……3 5
{
   
entity
ÀÀ 
.
ÀÀ 
HasKey
ÀÀ 
(
ÀÀ 
e
ÀÀ 
=>
ÀÀ  "
e
ÀÀ# $
.
ÀÀ$ %
StockId
ÀÀ% ,
)
ÀÀ, -
.
ÃÃ 
HasName
ÃÃ 
(
ÃÃ 
$str
ÃÃ '
)
ÃÃ' (
;
ÃÃ( )
entity
ŒŒ 
.
ŒŒ 
ToTable
ŒŒ 
(
ŒŒ 
$str
ŒŒ ,
)
ŒŒ, -
;
ŒŒ- .
entity
–– 
.
–– 
Property
–– 
(
––  
e
––  !
=>
––" $
e
––% &
.
––& '
StockId
––' .
)
––. /
.
—— 
HasColumnName
—— "
(
——" #
$str
——# -
)
——- .
.
““ 
HasMaxLength
““ !
(
““! "
$num
““" %
)
““% &
.
”” !
ValueGeneratedNever
”” (
(
””( )
)
””) *
;
””* +
entity
’’ 
.
’’ 
Property
’’ 
(
’’  
e
’’  !
=>
’’" $
e
’’% &
.
’’& '
	ProductId
’’' 0
)
’’0 1
.
÷÷ 

IsRequired
÷÷ 
(
÷÷  
)
÷÷  !
.
◊◊ 
HasColumnName
◊◊ "
(
◊◊" #
$str
◊◊# /
)
◊◊/ 0
.
ÿÿ 
HasMaxLength
ÿÿ !
(
ÿÿ! "
$num
ÿÿ" %
)
ÿÿ% &
;
ÿÿ& '
entity
⁄⁄ 
.
⁄⁄ 
Property
⁄⁄ 
(
⁄⁄  
e
⁄⁄  !
=>
⁄⁄" $
e
⁄⁄% &
.
⁄⁄& '
RemainingStock
⁄⁄' 5
)
⁄⁄5 6
.
⁄⁄6 7
HasColumnName
⁄⁄7 D
(
⁄⁄D E
$str
⁄⁄E V
)
⁄⁄V W
;
⁄⁄W X
entity
‹‹ 
.
‹‹ 
HasOne
‹‹ 
(
‹‹ 
d
‹‹ 
=>
‹‹  "
d
‹‹# $
.
‹‹$ %
Product
‹‹% ,
)
‹‹, -
.
›› 
WithMany
›› 
(
›› 
p
›› 
=>
››  "
p
››# $
.
››$ %

StockEntry
››% /
)
››/ 0
.
ﬁﬁ 
HasForeignKey
ﬁﬁ "
(
ﬁﬁ" #
d
ﬁﬁ# $
=>
ﬁﬁ% '
d
ﬁﬁ( )
.
ﬁﬁ) *
	ProductId
ﬁﬁ* 3
)
ﬁﬁ3 4
.
ﬂﬂ 
OnDelete
ﬂﬂ 
(
ﬂﬂ 
DeleteBehavior
ﬂﬂ ,
.
ﬂﬂ, -
ClientSetNull
ﬂﬂ- :
)
ﬂﬂ: ;
.
‡‡ 
HasConstraintName
‡‡ &
(
‡‡& '
$str
‡‡' 8
)
‡‡8 9
;
‡‡9 :
}
·· 
)
·· 
;
·· 
modelBuilder
„„ 
.
„„ 
Entity
„„ 
<
„„  
User
„„  $
>
„„$ %
(
„„% &
entity
„„& ,
=>
„„- /
{
‰‰ 
entity
ÂÂ 
.
ÂÂ 
Property
ÂÂ 
(
ÂÂ  
e
ÂÂ  !
=>
ÂÂ" $
e
ÂÂ% &
.
ÂÂ& '
Id
ÂÂ' )
)
ÂÂ) *
.
ÊÊ 
HasColumnName
ÊÊ "
(
ÊÊ" #
$str
ÊÊ# '
)
ÊÊ' (
.
ÁÁ 
HasMaxLength
ÁÁ !
(
ÁÁ! "
$num
ÁÁ" %
)
ÁÁ% &
.
ËË !
ValueGeneratedNever
ËË (
(
ËË( )
)
ËË) *
;
ËË* +
entity
ÍÍ 
.
ÍÍ 
Property
ÍÍ 
(
ÍÍ  
e
ÍÍ  !
=>
ÍÍ" $
e
ÍÍ% &
.
ÍÍ& '
Address
ÍÍ' .
)
ÍÍ. /
.
ÎÎ 

IsRequired
ÎÎ 
(
ÎÎ  
)
ÎÎ  !
.
ÏÏ 
HasMaxLength
ÏÏ !
(
ÏÏ! "
$num
ÏÏ" %
)
ÏÏ% &
.
ÌÌ 
	IsUnicode
ÌÌ 
(
ÌÌ 
false
ÌÌ $
)
ÌÌ$ %
;
ÌÌ% &
entity
ÔÔ 
.
ÔÔ 
Property
ÔÔ 
(
ÔÔ  
e
ÔÔ  !
=>
ÔÔ" $
e
ÔÔ% &
.
ÔÔ& '

CardNumber
ÔÔ' 1
)
ÔÔ1 2
.
 

IsRequired
 
(
  
)
  !
.
ÒÒ 
HasColumnName
ÒÒ "
(
ÒÒ" #
$str
ÒÒ# 0
)
ÒÒ0 1
.
ÚÚ 
HasMaxLength
ÚÚ !
(
ÚÚ! "
$num
ÚÚ" $
)
ÚÚ$ %
.
ÛÛ 
	IsUnicode
ÛÛ 
(
ÛÛ 
false
ÛÛ $
)
ÛÛ$ %
;
ÛÛ% &
entity
ıı 
.
ıı 
Property
ıı 
(
ıı  
e
ıı  !
=>
ıı" $
e
ıı% &
.
ıı& '
Name
ıı' +
)
ıı+ ,
.
ˆˆ 

IsRequired
ˆˆ 
(
ˆˆ  
)
ˆˆ  !
.
˜˜ 
HasMaxLength
˜˜ !
(
˜˜! "
$num
˜˜" $
)
˜˜$ %
.
¯¯ 
	IsUnicode
¯¯ 
(
¯¯ 
false
¯¯ $
)
¯¯$ %
;
¯¯% &
entity
˙˙ 
.
˙˙ 
Property
˙˙ 
(
˙˙  
e
˙˙  !
=>
˙˙" $
e
˙˙% &
.
˙˙& '
RoleId
˙˙' -
)
˙˙- .
.
˙˙. /
HasColumnName
˙˙/ <
(
˙˙< =
$str
˙˙= F
)
˙˙F G
;
˙˙G H
entity
¸¸ 
.
¸¸ 
HasOne
¸¸ 
(
¸¸ 
d
¸¸ 
=>
¸¸  "
d
¸¸# $
.
¸¸$ %
Role
¸¸% )
)
¸¸) *
.
˝˝ 
WithMany
˝˝ 
(
˝˝ 
p
˝˝ 
=>
˝˝  "
p
˝˝# $
.
˝˝$ %
User
˝˝% )
)
˝˝) *
.
˛˛ 
HasForeignKey
˛˛ "
(
˛˛" #
d
˛˛# $
=>
˛˛% '
d
˛˛( )
.
˛˛) *
RoleId
˛˛* 0
)
˛˛0 1
.
ˇˇ 
OnDelete
ˇˇ 
(
ˇˇ 
DeleteBehavior
ˇˇ ,
.
ˇˇ, -
ClientSetNull
ˇˇ- :
)
ˇˇ: ;
.
ÄÄ 
HasConstraintName
ÄÄ &
(
ÄÄ& '
$str
ÄÄ' 1
)
ÄÄ1 2
;
ÄÄ2 3
}
ÅÅ 
)
ÅÅ 
;
ÅÅ 
}
ÇÇ 	
}
ÉÉ 
}ÑÑ €
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
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
.$ %
Models% +
{ 
public 

partial 
class 
Order 
{ 
public 
Order 
( 
) 
{		 	
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
6 7
} 	
public 
string 
OrderId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
HasBeenPlaced  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
ClientId 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
HasBeenConfirmed &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
int 
Quantity 
{ 
get !
;! "
set# &
;& '
}( )
public 
virtual 
User 
Client "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
virtual 
ICollection "
<" #
ProductOrder# /
>/ 0
ProductOrder1 =
{> ?
get@ C
;C D
setE H
;H I
}J K
} 
} ∂
xE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Models\Product.cs
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
.$ %
Models% +
{ 
public 

partial 
class 
Product  
{ 
public 
Product 
( 
) 
{		 	
ProductCategory

 
=

 
new

 !
HashSet

" )
<

) *
ProductCategory

* 9
>

9 :
(

: ;
)

; <
;

< =
ProductOrder 
= 
new 
HashSet &
<& '
ProductOrder' 3
>3 4
(4 5
)5 6
;6 7

StockEntry 
= 
new 
HashSet $
<$ %

StockEntry% /
>/ 0
(0 1
)1 2
;2 3
} 	
public 
string 
	ProductId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
ProductName !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
ProductDescription (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
string 
ProductPicture $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
decimal 
Price 
{ 
get "
;" #
set$ '
;' (
}) *
public 
decimal 
Sales 
{ 
get  #
;# $
set% (
;( )
}* +
public 
decimal 
Nprice 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 
SpecificationFile '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
virtual 
ICollection "
<" #
ProductCategory# 2
>2 3
ProductCategory4 C
{D E
getF I
;I J
setK N
;N O
}P Q
public 
virtual 
ICollection "
<" #
ProductOrder# /
>/ 0
ProductOrder1 =
{> ?
get@ C
;C D
setE H
;H I
}J K
public 
virtual 
ICollection "
<" #

StockEntry# -
>- .

StockEntry/ 9
{: ;
get< ?
;? @
setA D
;D E
}F G
} 
} ∏	
ÄE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Models\ProductCategory.cs
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
.$ %
Models% +
{ 
public 

partial 
class 
ProductCategory (
{ 
public 
string 
	ProductId 
{  !
get" %
;% &
set' *
;* +
}, -
public		 
string		 

CategoryId		  
{		! "
get		# &
;		& '
set		( +
;		+ ,
}		- .
public

 
string

 
IdProductCategory

 '
{

( )
get

* -
;

- .
set

/ 2
;

2 3
}

4 5
public 
virtual 
Category 
Category  (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
public 
virtual 
Product 
Product &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
} 
} ≈	
}E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Models\ProductOrder.cs
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
.$ %
Models% +
{ 
public 

partial 
class 
ProductOrder %
{ 
public 
string 
	OrderIdFk 
{  !
get" %
;% &
set' *
;* +
}, -
public		 
string		 
ProductIdFk		 !
{		" #
get		$ '
;		' (
set		) ,
;		, -
}		. /
public

 
string

 
IdProductOrder

 $
{

% &
get

' *
;

* +
set

, /
;

/ 0
}

1 2
public 
virtual 
Order 
OrderIdFkNavigation 0
{1 2
get3 6
;6 7
set8 ;
;; <
}= >
public 
virtual 
Product !
ProductIdFkNavigation 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
} 
} ı
uE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Models\Role.cs
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
.$ %
Models% +
{ 
public 

partial 
class 
Role 
{ 
public 
Role 
( 
) 
{		 	
User

 
=

 
new

 
HashSet

 
<

 
User

 #
>

# $
(

$ %
)

% &
;

& '
} 	
public 
int 
RoleId 
{ 
get 
;  
set! $
;$ %
}& '
public 
string 
Role1 
{ 
get !
;! "
set# &
;& '
}( )
public 
virtual 
ICollection "
<" #
User# '
>' (
User) -
{. /
get0 3
;3 4
set5 8
;8 9
}: ;
} 
} Ä
{E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Models\StockEntry.cs
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
.$ %
Models% +
{ 
public 

partial 
class 

StockEntry #
{ 
public 
string 
StockId 
{ 
get  #
;# $
set% (
;( )
}* +
public		 
string		 
	ProductId		 
{		  !
get		" %
;		% &
set		' *
;		* +
}		, -
public

 
int

 
?

 
RemainingStock

 "
{

# $
get

% (
;

( )
set

* -
;

- .
}

/ 0
public 
virtual 
Product 
Product &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
} 
} Ú
uE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Models\User.cs
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
.$ %
Models% +
{ 
public 

partial 
class 
User 
{ 
public 
User 
( 
) 
{		 	
Order

 
=

 
new

 
HashSet

 
<

  
Order

  %
>

% &
(

& '
)

' (
;

( )
} 	
public 
string 
Id 
{ 
get 
; 
set  #
;# $
}% &
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Address 
{ 
get  #
;# $
set% (
;( )
}* +
public 
string 

CardNumber  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
int 
RoleId 
{ 
get 
;  
set! $
;$ %
}& '
public 
virtual 
Role 
Role  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
virtual 
ICollection "
<" #
Order# (
>( )
Order* /
{0 1
get2 5
;5 6
set7 :
;: ;
}< =
} 
} •	
qE:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Program.cs
	namespace 	&
Ecommerce_proiect_an4_sem1
 $
{ 
public 

class 
Program 
{ 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{ 	 
CreateWebHostBuilder  
(  !
args! %
)% &
.& '
Build' ,
(, -
)- .
.. /
Run/ 2
(2 3
)3 4
;4 5
} 	
public 
static 
IWebHostBuilder % 
CreateWebHostBuilder& :
(: ;
string; A
[A B
]B C
argsD H
)H I
=>J L
WebHost 
.  
CreateDefaultBuilder (
(( )
args) -
)- .
. 

UseStartup 
< 
Startup #
># $
($ %
)% &
;& '
} 
} Ò&
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