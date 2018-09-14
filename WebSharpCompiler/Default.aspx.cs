using System;
using System.Collections.Generic;

namespace WebSharpCompiler
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void btnCompile_Click(object sender, EventArgs e)
        {
            lstCompilerOutput.Items.Clear();
            WebSharpCompilerBusiness.WebSharpCompiler compiler = new WebSharpCompilerBusiness.WebSharpCompiler();
            List<string> compilerErrors = compiler.Compile(txtCode.Text);

            if (compilerErrors.Count == 0)
            {
                lstCompilerOutput.Items.Add("No Errors");
            }

            foreach (string error in compilerErrors)
            {
                lstCompilerOutput.Items.Add(error);
            }

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtCode.Text = string.Empty;
        }
    }
}
