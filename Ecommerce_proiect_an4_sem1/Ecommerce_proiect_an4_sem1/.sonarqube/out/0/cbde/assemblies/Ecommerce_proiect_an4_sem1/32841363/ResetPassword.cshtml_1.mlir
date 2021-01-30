func @_Ecommerce_proiect_an4_sem1.Areas.Identity.Pages.Account.ResetPasswordModel.OnGet$string$(none) -> none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\ResetPassword.cshtml.cs" :44 :8) {
^entry (%_code : none):
%0 = cbde.alloca none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\ResetPassword.cshtml.cs" :44 :35)
cbde.store %_code, %0 : memref<none> loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\ResetPassword.cshtml.cs" :44 :35)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\ResetPassword.cshtml.cs" :46 :16) // Not a variable of known type: code
%2 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\ResetPassword.cshtml.cs" :46 :24) // null (NullLiteralExpression)
%3 = cbde.unknown : i1  loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\ResetPassword.cshtml.cs" :46 :16) // comparison of unknown type: code == null
cond_br %3, ^1, ^2 loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\ResetPassword.cshtml.cs" :46 :16)

^1: // JumpBlock
// Entity from another assembly: BadRequest
%4 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\ResetPassword.cshtml.cs" :48 :34) // "A code must be supplied for password reset." (StringLiteralExpression)
%5 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\ResetPassword.cshtml.cs" :48 :23) // BadRequest("A code must be supplied for password reset.") (InvocationExpression)
return %5 : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\ResetPassword.cshtml.cs" :48 :16)

^2: // JumpBlock
%6 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\ResetPassword.cshtml.cs" :52 :24) // new InputModel                 {                     Code = code                 } (ObjectCreationExpression)
%7 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\ResetPassword.cshtml.cs" :54 :27) // Not a variable of known type: code
// Entity from another assembly: Page
%8 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\ResetPassword.cshtml.cs" :56 :23) // Page() (InvocationExpression)
return %8 : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Areas\\Identity\\Pages\\Account\\ResetPassword.cshtml.cs" :56 :16)

^3: // ExitBlock
cbde.unreachable

}
// Skipping function OnPostAsync(), it contains poisonous unsupported syntaxes

