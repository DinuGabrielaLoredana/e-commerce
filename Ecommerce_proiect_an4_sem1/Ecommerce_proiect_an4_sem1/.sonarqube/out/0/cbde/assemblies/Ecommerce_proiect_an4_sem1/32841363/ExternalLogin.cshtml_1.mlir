func @_Ecommerce_proiect_an4_sem1.Areas.Identity.Pages.Account.ExternalLoginModel.OnGetAsync$$() -> none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\ExternalLogin.cshtml.cs" :48 :8) {
^entry :
br ^0

^0: // JumpBlock
// Entity from another assembly: RedirectToPage
%0 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\ExternalLogin.cshtml.cs" :50 :34) // "./Login" (StringLiteralExpression)
%1 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\ExternalLogin.cshtml.cs" :50 :19) // RedirectToPage("./Login") (InvocationExpression)
return %1 : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\ExternalLogin.cshtml.cs" :50 :12)

^1: // ExitBlock
cbde.unreachable

}
func @_Ecommerce_proiect_an4_sem1.Areas.Identity.Pages.Account.ExternalLoginModel.OnPost$string.string$(none, none) -> none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\ExternalLogin.cshtml.cs" :53 :8) {
^entry (%_provider : none, %_returnUrl : none):
%0 = cbde.alloca none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\ExternalLogin.cshtml.cs" :53 :36)
cbde.store %_provider, %0 : memref<none> loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\ExternalLogin.cshtml.cs" :53 :36)
%1 = cbde.alloca none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\ExternalLogin.cshtml.cs" :53 :53)
cbde.store %_returnUrl, %1 : memref<none> loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\ExternalLogin.cshtml.cs" :53 :53)
br ^0

^0: // JumpBlock
%2 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\ExternalLogin.cshtml.cs" :56 :30) // Identifier from another assembly: Url
%3 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\ExternalLogin.cshtml.cs" :56 :39) // "./ExternalLogin" (StringLiteralExpression)
%4 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\ExternalLogin.cshtml.cs" :56 :71) // "Callback" (StringLiteralExpression)
%5 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\ExternalLogin.cshtml.cs" :56 :97) // Not a variable of known type: returnUrl
%6 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\ExternalLogin.cshtml.cs" :56 :91) // new { returnUrl } (AnonymousObjectCreationExpression)
%7 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\ExternalLogin.cshtml.cs" :56 :30) // Url.Page("./ExternalLogin", pageHandler: "Callback", values: new { returnUrl }) (InvocationExpression)
%9 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\ExternalLogin.cshtml.cs" :57 :29) // Not a variable of known type: _signInManager
%10 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\ExternalLogin.cshtml.cs" :57 :86) // Not a variable of known type: provider
%11 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\ExternalLogin.cshtml.cs" :57 :96) // Not a variable of known type: redirectUrl
%12 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\ExternalLogin.cshtml.cs" :57 :29) // _signInManager.ConfigureExternalAuthenticationProperties(provider, redirectUrl) (InvocationExpression)
%14 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\ExternalLogin.cshtml.cs" :58 :39) // Not a variable of known type: provider
%15 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\ExternalLogin.cshtml.cs" :58 :49) // Not a variable of known type: properties
%16 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\ExternalLogin.cshtml.cs" :58 :19) // new ChallengeResult(provider, properties) (ObjectCreationExpression)
return %16 : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\ExternalLogin.cshtml.cs" :58 :12)

^1: // ExitBlock
cbde.unreachable

}
// Skipping function OnGetCallbackAsync(none, none), it contains poisonous unsupported syntaxes

// Skipping function OnPostConfirmationAsync(none), it contains poisonous unsupported syntaxes

