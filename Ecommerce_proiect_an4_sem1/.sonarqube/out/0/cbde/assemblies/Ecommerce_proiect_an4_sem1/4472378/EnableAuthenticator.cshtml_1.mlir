// Skipping function OnGetAsync(), it contains poisonous unsupported syntaxes

// Skipping function OnPostAsync(), it contains poisonous unsupported syntaxes

// Skipping function LoadSharedKeyAndQrCodeUriAsync(none), it contains poisonous unsupported syntaxes

func @_Ecommerce_proiect_an4_sem1.Areas.Identity.Pages.Account.Manage.EnableAuthenticatorModel.FormatKey$string$(none) -> none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :126 :8) {
^entry (%_unformattedKey : none):
%0 = cbde.alloca none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :126 :33)
cbde.store %_unformattedKey, %0 : memref<none> loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :126 :33)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :128 :25) // new StringBuilder() (ObjectCreationExpression)
%3 = constant 0 : i32 loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :129 :34)
%4 = cbde.alloca i32 loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :129 :16) // currentPosition
cbde.store %3, %4 : memref<i32> loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :129 :16)
br ^1

^1: // BinaryBranchBlock
%5 = cbde.load %4 : memref<i32> loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :130 :19)
%6 = constant 4 : i32 loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :130 :37)
%7 = addi %5, %6 : i32 loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :130 :19)
%8 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :130 :41) // Not a variable of known type: unformattedKey
%9 = cbde.unknown : i32 loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :130 :41) // unformattedKey.Length (SimpleMemberAccessExpression)
%10 = cmpi "slt", %7, %9 : i32 loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :130 :19)
cond_br %10, ^2, ^3 loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :130 :19)

^2: // SimpleBlock
%11 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :132 :16) // Not a variable of known type: result
%12 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :132 :30) // Not a variable of known type: unformattedKey
%13 = cbde.load %4 : memref<i32> loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :132 :55)
%14 = constant 4 : i32 loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :132 :72)
%15 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :132 :30) // unformattedKey.Substring(currentPosition, 4) (InvocationExpression)
%16 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :132 :16) // result.Append(unformattedKey.Substring(currentPosition, 4)) (InvocationExpression)
%17 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :132 :83) // " " (StringLiteralExpression)
%18 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :132 :16) // result.Append(unformattedKey.Substring(currentPosition, 4)).Append(" ") (InvocationExpression)
%19 = cbde.load %4 : memref<i32> loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :133 :16)
%20 = constant 4 : i32 loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :133 :35)
%21 = addi %19, %20 : i32 loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :133 :16)
cbde.store %21, %4 : memref<i32> loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :133 :16)
br ^1

^3: // BinaryBranchBlock
%22 = cbde.load %4 : memref<i32> loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :135 :16)
%23 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :135 :34) // Not a variable of known type: unformattedKey
%24 = cbde.unknown : i32 loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :135 :34) // unformattedKey.Length (SimpleMemberAccessExpression)
%25 = cmpi "slt", %22, %24 : i32 loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :135 :16)
cond_br %25, ^4, ^5 loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :135 :16)

^4: // SimpleBlock
%26 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :137 :16) // Not a variable of known type: result
%27 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :137 :30) // Not a variable of known type: unformattedKey
%28 = cbde.load %4 : memref<i32> loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :137 :55)
%29 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :137 :30) // unformattedKey.Substring(currentPosition) (InvocationExpression)
%30 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :137 :16) // result.Append(unformattedKey.Substring(currentPosition)) (InvocationExpression)
br ^5

^5: // JumpBlock
%31 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :140 :19) // Not a variable of known type: result
%32 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :140 :19) // result.ToString() (InvocationExpression)
%33 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :140 :19) // result.ToString().ToLowerInvariant() (InvocationExpression)
return %33 : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :140 :12)

^6: // ExitBlock
cbde.unreachable

}
func @_Ecommerce_proiect_an4_sem1.Areas.Identity.Pages.Account.Manage.EnableAuthenticatorModel.GenerateQrCodeUri$string.string$(none, none) -> none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :143 :8) {
^entry (%_email : none, %_unformattedKey : none):
%0 = cbde.alloca none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :143 :41)
cbde.store %_email, %0 : memref<none> loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :143 :41)
%1 = cbde.alloca none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :143 :55)
cbde.store %_unformattedKey, %1 : memref<none> loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :143 :55)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :145 :19) // string (PredefinedType)
%3 = constant unit loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :146 :16) // AuthenticatorUriFormat (IdentifierName)
%4 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :147 :16) // Not a variable of known type: _urlEncoder
%5 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :147 :35) // "Ecommerce_proiect_an4_sem1" (StringLiteralExpression)
%6 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :147 :16) // _urlEncoder.Encode("Ecommerce_proiect_an4_sem1") (InvocationExpression)
%7 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :148 :16) // Not a variable of known type: _urlEncoder
%8 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :148 :35) // Not a variable of known type: email
%9 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :148 :16) // _urlEncoder.Encode(email) (InvocationExpression)
%10 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :149 :16) // Not a variable of known type: unformattedKey
%11 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :145 :19) // string.Format(                 AuthenticatorUriFormat,                 _urlEncoder.Encode("Ecommerce_proiect_an4_sem1"),                 _urlEncoder.Encode(email),                 unformattedKey) (InvocationExpression)
return %11 : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\Manage\\EnableAuthenticator.cshtml.cs" :145 :12)

^1: // ExitBlock
cbde.unreachable

}
