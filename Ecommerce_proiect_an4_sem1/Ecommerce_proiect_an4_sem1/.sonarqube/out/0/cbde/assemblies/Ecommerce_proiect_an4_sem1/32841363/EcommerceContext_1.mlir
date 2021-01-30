func @_Ecommerce_proiect_an4_sem1.Models.EcommerceContext.OnConfiguring$Microsoft.EntityFrameworkCore.DbContextOptionsBuilder$(none) -> () loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Models\\EcommerceContext.cs" :29 :8) {
^entry (%_optionsBuilder : none):
%0 = cbde.alloca none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Models\\EcommerceContext.cs" :29 :46)
cbde.store %_optionsBuilder, %0 : memref<none> loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Models\\EcommerceContext.cs" :29 :46)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Models\\EcommerceContext.cs" :31 :17) // Not a variable of known type: optionsBuilder
%2 = cbde.unknown : i1 loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Models\\EcommerceContext.cs" :31 :17) // optionsBuilder.IsConfigured (SimpleMemberAccessExpression)
%3 = cbde.unknown : i1 loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Models\\EcommerceContext.cs" :31 :16) // !optionsBuilder.IsConfigured (LogicalNotExpression)
cond_br %3, ^1, ^2 loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Models\\EcommerceContext.cs" :31 :16)

^1: // SimpleBlock
// Entity from another assembly: System
%4 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Models\\EcommerceContext.cs" :34 :33) // System.IO.File (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Models\\EcommerceContext.cs" :34 :60) // @"database_settings.json" (StringLiteralExpression)
%6 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Models\\EcommerceContext.cs" :34 :33) // System.IO.File.ReadAllText(@"database_settings.json") (InvocationExpression)
// Entity from another assembly: JObject
%8 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Models\\EcommerceContext.cs" :35 :46) // Not a variable of known type: jsonString
%9 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Models\\EcommerceContext.cs" :35 :32) // JObject.Parse(jsonString) (InvocationExpression)
%11 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Models\\EcommerceContext.cs" :36 :39) // Not a variable of known type: myJObject
%12 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Models\\EcommerceContext.cs" :36 :62) // "DatabasePath" (StringLiteralExpression)
%13 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Models\\EcommerceContext.cs" :36 :39) // @myJObject.SelectToken("DatabasePath") (InvocationExpression)
%14 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Models\\EcommerceContext.cs" :36 :39) // @myJObject.SelectToken("DatabasePath").Value<string>() (InvocationExpression)
%16 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Models\\EcommerceContext.cs" :37 :16) // Not a variable of known type: optionsBuilder
%17 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Models\\EcommerceContext.cs" :37 :44) // Not a variable of known type: connectionString
%18 = cbde.unknown : none loc("E:\\automatica\\automaticaMasterAn1\\msic\\ecommerce\\Ecommerce_proiect_an4_sem1\\Ecommerce_proiect_an4_sem1\\Models\\EcommerceContext.cs" :37 :16) // optionsBuilder.UseSqlServer(connectionString) (InvocationExpression)
br ^2

^2: // ExitBlock
return

}
// Skipping function OnModelCreating(none), it contains poisonous unsupported syntaxes

