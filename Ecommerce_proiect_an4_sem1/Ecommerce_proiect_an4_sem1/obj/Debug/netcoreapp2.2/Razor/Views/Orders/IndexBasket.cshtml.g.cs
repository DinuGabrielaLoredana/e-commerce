#pragma checksum "E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Views\Orders\IndexBasket.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "cec662ede2c332c6bf7456afe6df698e00d7b975"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Orders_IndexBasket), @"mvc.1.0.view", @"/Views/Orders/IndexBasket.cshtml")]
[assembly:global::Microsoft.AspNetCore.Mvc.Razor.Compilation.RazorViewAttribute(@"/Views/Orders/IndexBasket.cshtml", typeof(AspNetCore.Views_Orders_IndexBasket))]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#line 1 "E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Views\_ViewImports.cshtml"
using Ecommerce_proiect_an4_sem1;

#line default
#line hidden
#line 2 "E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Views\_ViewImports.cshtml"
using Ecommerce_proiect_an4_sem1.Models;

#line default
#line hidden
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"cec662ede2c332c6bf7456afe6df698e00d7b975", @"/Views/Orders/IndexBasket.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"426167e5401011a10d471cd01a6796c9bd2a1f21", @"/Views/_ViewImports.cshtml")]
    public class Views_Orders_IndexBasket : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<IEnumerable<Ecommerce_proiect_an4_sem1.Models.Order>>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "Create", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "DecrementOrder", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_2 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "IncrementOrder", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_3 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "PlaceOrder", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_4 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "Delete", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        #line hidden
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            BeginContext(60, 1, true);
            WriteLiteral("\n");
            EndContext();
#line 3 "E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Views\Orders\IndexBasket.cshtml"
  
    ViewData["Title"] = "IndexBasket";
    if (this.User.IsInRole("User"))
    {
        Layout = "~/Views/Shared/_LayoutUser.cshtml";
    }
    else if (!this.User.Identity.IsAuthenticated)
    {
        Layout = "~/Views/Shared/_LayoutNotLogedIn.cshtml";
    }
    else
    {
        Layout = "~/Views/Shared/_Layout.cshtml";
    }
    decimal total = 0;

#line default
#line hidden
            BeginContext(423, 24, true);
            WriteLiteral("<h1>Index</h1>\n\n<p>\n    ");
            EndContext();
            BeginContext(447, 37, false);
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "cec662ede2c332c6bf7456afe6df698e00d7b9755634", async() => {
                BeginContext(470, 10, true);
                WriteLiteral("Create New");
                EndContext();
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Action = (string)__tagHelperAttribute_0.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_0);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            EndContext();
            BeginContext(484, 127, true);
            WriteLiteral("\n</p>\n<table class=\"table\">\r\n    <caption></caption>\r\n    <thead>\r\n        <tr>\r\n            <th scope=\"col\">\r\n                ");
            EndContext();
            BeginContext(612, 48, false);
#line 29 "E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Views\Orders\IndexBasket.cshtml"
           Write(Html.DisplayNameFor(model => model.ProductOrder));

#line default
#line hidden
            EndContext();
            BeginContext(660, 98, true);
            WriteLiteral("\r\n            </th>\r\n            <th scope=\"col\"></th>\r\n        </tr>\r\n    </thead>\r\n    <tbody>\r\n");
            EndContext();
#line 35 "E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Views\Orders\IndexBasket.cshtml"
         foreach (var item in Model)
        {

#line default
#line hidden
            BeginContext(807, 40, true);
            WriteLiteral("            <tr>\r\n                <td>\r\n");
            EndContext();
#line 39 "E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Views\Orders\IndexBasket.cshtml"
                     foreach (var product in item.ProductOrder)
                    {

#line default
#line hidden
            BeginContext(935, 54, true);
            WriteLiteral("                    <td>\r\n                        <p> ");
            EndContext();
            BeginContext(990, 41, false);
#line 42 "E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Views\Orders\IndexBasket.cshtml"
                       Write(product.ProductIdFkNavigation.ProductName);

#line default
#line hidden
            EndContext();
            BeginContext(1031, 87, true);
            WriteLiteral("</p>\r\n                    </td>\r\n                    <td>\r\n                        <p> ");
            EndContext();
            BeginContext(1119, 35, false);
#line 45 "E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Views\Orders\IndexBasket.cshtml"
                       Write(product.ProductIdFkNavigation.Price);

#line default
#line hidden
            EndContext();
            BeginContext(1154, 57, true);
            WriteLiteral(" $</p>\r\n                        <p style=\"display:none\"> ");
            EndContext();
            BeginContext(1213, 72, false);
#line 46 "E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Views\Orders\IndexBasket.cshtml"
                                             Write( total = total + (@product.ProductIdFkNavigation.Price * item.Quantity) );

#line default
#line hidden
            EndContext();
            BeginContext(1286, 82, true);
            WriteLiteral("<p>\r\n                    </td>\r\n                    <td>\r\n                        ");
            EndContext();
            BeginContext(1368, 65, false);
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "cec662ede2c332c6bf7456afe6df698e00d7b97510032", async() => {
                BeginContext(1428, 1, true);
                WriteLiteral("-");
                EndContext();
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Action = (string)__tagHelperAttribute_1.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_1);
            if (__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues == null)
            {
                throw new InvalidOperationException(InvalidTagHelperIndexerAssignment("asp-route-id", "Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper", "RouteValues"));
            }
            BeginWriteTagHelperAttribute();
#line 49 "E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Views\Orders\IndexBasket.cshtml"
                                                         WriteLiteral(item.OrderId);

#line default
#line hidden
            __tagHelperStringValueBuffer = EndWriteTagHelperAttribute();
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["id"] = __tagHelperStringValueBuffer;
            __tagHelperExecutionContext.AddTagHelperAttribute("asp-route-id", __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["id"], global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            EndContext();
            BeginContext(1433, 1, true);
            WriteLiteral(" ");
            EndContext();
            BeginContext(1435, 13, false);
#line 49 "E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Views\Orders\IndexBasket.cshtml"
                                                                                     Write(item.Quantity);

#line default
#line hidden
            EndContext();
            BeginContext(1448, 1, true);
            WriteLiteral(" ");
            EndContext();
            BeginContext(1449, 65, false);
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "cec662ede2c332c6bf7456afe6df698e00d7b97512889", async() => {
                BeginContext(1509, 1, true);
                WriteLiteral("+");
                EndContext();
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Action = (string)__tagHelperAttribute_2.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_2);
            if (__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues == null)
            {
                throw new InvalidOperationException(InvalidTagHelperIndexerAssignment("asp-route-id", "Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper", "RouteValues"));
            }
            BeginWriteTagHelperAttribute();
#line 49 "E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Views\Orders\IndexBasket.cshtml"
                                                                                                                                          WriteLiteral(item.OrderId);

#line default
#line hidden
            __tagHelperStringValueBuffer = EndWriteTagHelperAttribute();
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["id"] = __tagHelperStringValueBuffer;
            __tagHelperExecutionContext.AddTagHelperAttribute("asp-route-id", __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["id"], global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            EndContext();
            BeginContext(1514, 29, true);
            WriteLiteral("\r\n                    </td>\r\n");
            EndContext();
#line 51 "E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Views\Orders\IndexBasket.cshtml"
                }

#line default
#line hidden
            BeginContext(1562, 77, true);
            WriteLiteral("                    </td>\r\n                    <td>\r\n                        ");
            EndContext();
            BeginContext(1639, 71, false);
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "cec662ede2c332c6bf7456afe6df698e00d7b97515781", async() => {
                BeginContext(1695, 11, true);
                WriteLiteral("Place Order");
                EndContext();
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Action = (string)__tagHelperAttribute_3.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_3);
            if (__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues == null)
            {
                throw new InvalidOperationException(InvalidTagHelperIndexerAssignment("asp-route-id", "Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper", "RouteValues"));
            }
            BeginWriteTagHelperAttribute();
#line 54 "E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Views\Orders\IndexBasket.cshtml"
                                                     WriteLiteral(item.OrderId);

#line default
#line hidden
            __tagHelperStringValueBuffer = EndWriteTagHelperAttribute();
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["id"] = __tagHelperStringValueBuffer;
            __tagHelperExecutionContext.AddTagHelperAttribute("asp-route-id", __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["id"], global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            EndContext();
            BeginContext(1710, 26, true);
            WriteLiteral("\r\n                        ");
            EndContext();
            BeginContext(1736, 62, false);
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "cec662ede2c332c6bf7456afe6df698e00d7b97518215", async() => {
                BeginContext(1788, 6, true);
                WriteLiteral("Delete");
                EndContext();
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Action = (string)__tagHelperAttribute_4.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_4);
            if (__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues == null)
            {
                throw new InvalidOperationException(InvalidTagHelperIndexerAssignment("asp-route-id", "Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper", "RouteValues"));
            }
            BeginWriteTagHelperAttribute();
#line 55 "E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Views\Orders\IndexBasket.cshtml"
                                                 WriteLiteral(item.OrderId);

#line default
#line hidden
            __tagHelperStringValueBuffer = EndWriteTagHelperAttribute();
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["id"] = __tagHelperStringValueBuffer;
            __tagHelperExecutionContext.AddTagHelperAttribute("asp-route-id", __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.RouteValues["id"], global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            EndContext();
            BeginContext(1798, 52, true);
            WriteLiteral("\r\n                    </td>\r\n                </tr>\r\n");
            EndContext();
#line 58 "E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Views\Orders\IndexBasket.cshtml"
            }

#line default
#line hidden
            BeginContext(1865, 42, true);
            WriteLiteral("\r\n    </tbody>\r\n</table>\n\n\n<p>\n    Total: ");
            EndContext();
            BeginContext(1908, 5, false);
#line 65 "E:\automatica\automaticaMasterAn1\msic\ecommerce\Ecommerce_proiect_an4_sem1\Ecommerce_proiect_an4_sem1\Views\Orders\IndexBasket.cshtml"
      Write(total);

#line default
#line hidden
            EndContext();
            BeginContext(1913, 9, true);
            WriteLiteral("  $\n</p>\n");
            EndContext();
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<IEnumerable<Ecommerce_proiect_an4_sem1.Models.Order>> Html { get; private set; }
    }
}
#pragma warning restore 1591
