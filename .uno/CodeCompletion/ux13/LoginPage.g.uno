[Uno.Compiler.UxGenerated]
public partial class LoginPage: Fuse.Controls.Page
{
    readonly Fuse.Navigation.Router router;
    internal global::Fuse.Controls.Rectangle rectNormalScale;
    internal global::Fuse.Reactive.EventBinding temp_eb0;
    global::Uno.UX.NameTable __g_nametable;
    static string[] __g_static_nametable = new string[] {
        "router",
        "rectNormalScale",
        "temp_eb0"
    };
    static LoginPage()
    {
    }
    [global::Uno.UX.UXConstructor]
    public LoginPage(
		[global::Uno.UX.UXParameter("router")] Fuse.Navigation.Router router)
    {
        this.router = router;
        InitializeUX();
    }
    void InitializeUX()
    {
        __g_nametable = new global::Uno.UX.NameTable(null, __g_static_nametable);
        var temp = new global::Fuse.Reactive.Data("gomain");
        var temp1 = new global::Fuse.Reactive.JavaScript(__g_nametable);
        var temp2 = new global::Fuse.Controls.Grid();
        var temp3 = new global::Fuse.Controls.Image();
        var temp4 = new global::Fuse.Controls.Grid();
        var temp5 = new global::Fuse.Controls.Image();
        var temp6 = new global::Fuse.Controls.TextInput();
        var temp7 = new global::Fuse.Controls.Rectangle();
        var temp8 = new global::Fuse.Controls.Image();
        var temp9 = new global::Fuse.Controls.TextInput();
        var temp10 = new global::Fuse.Controls.Rectangle();
        var temp11 = new global::Fuse.Controls.Panel();
        rectNormalScale = new global::Fuse.Controls.Rectangle();
        var temp12 = new global::Fuse.Controls.Text();
        var temp13 = new global::Fuse.Gestures.WhilePressed();
        var temp14 = new global::Fuse.Animations.Scale();
        temp_eb0 = new global::Fuse.Reactive.EventBinding(temp);
        temp1.Code = "\n\t\tmodule.exports = {\n\t\t\tgomain: function() { router.push(\"mainpage\");}\n\t\t}\n\t";
        temp1.LineNumber = 5;
        temp1.FileName = "Pages/Login.ux";
        temp2.Rows = "1.5*,auto,1*";
        temp2.Padding = float4(40f, 0f, 40f, 0f);
        temp2.Children.Add(temp3);
        temp2.Children.Add(temp4);
        temp2.Children.Add(temp11);
        temp3.Margin = float4(40f, 40f, 40f, 40f);
        global::Fuse.Controls.Grid.SetRow(temp3, 0);
        temp3.File = new global::Uno.UX.BundleFileSource(import("../../../Assets/Images/fuselogo.png"));
        temp4.RowCount = 2;
        temp4.Columns = "auto,1*";
        temp4.Height = new Uno.UX.Size(160f, Uno.UX.Unit.Unspecified);
        temp4.MaxWidth = new Uno.UX.Size(400f, Uno.UX.Unit.Unspecified);
        temp4.Padding = float4(0f, 20f, 0f, 20f);
        global::Fuse.Controls.Grid.SetRow(temp4, 1);
        temp4.Children.Add(temp5);
        temp4.Children.Add(temp6);
        temp4.Children.Add(temp7);
        temp4.Children.Add(temp8);
        temp4.Children.Add(temp9);
        temp4.Children.Add(temp10);
        temp5.Width = new Uno.UX.Size(20f, Uno.UX.Unit.Unspecified);
        temp5.Height = new Uno.UX.Size(20f, Uno.UX.Unit.Unspecified);
        temp5.Alignment = Fuse.Elements.Alignment.Left;
        temp5.Margin = float4(10f, 0f, 30f, 0f);
        global::Fuse.Controls.Grid.SetRow(temp5, 0);
        global::Fuse.Controls.Grid.SetColumn(temp5, 0);
        temp5.File = new global::Uno.UX.BundleFileSource(import("../../../Assets/Images/user_icon.png"));
        temp6.PlaceholderText = "아이디";
        temp6.PlaceholderColor = float4(0.6f, 0.6f, 0.6f, 1f);
        temp6.TextColor = float4(1f, 1f, 1f, 1f);
        temp6.InputHint = Fuse.Controls.TextInputHint.Email;
        temp6.CaretColor = float4(1f, 1f, 1f, 1f);
        global::Fuse.Controls.Grid.SetRow(temp6, 0);
        global::Fuse.Controls.Grid.SetColumn(temp6, 1);
        temp7.Color = float4(1f, 1f, 1f, 1f);
        temp7.Height = new Uno.UX.Size(1f, Uno.UX.Unit.Unspecified);
        temp7.Alignment = Fuse.Elements.Alignment.Bottom;
        global::Fuse.Controls.Grid.SetRow(temp7, 0);
        global::Fuse.Controls.Grid.SetColumn(temp7, 0);
        global::Fuse.Controls.Grid.SetColumnSpan(temp7, 2);
        temp8.Width = new Uno.UX.Size(20f, Uno.UX.Unit.Unspecified);
        temp8.Height = new Uno.UX.Size(20f, Uno.UX.Unit.Unspecified);
        temp8.Alignment = Fuse.Elements.Alignment.Left;
        temp8.Margin = float4(10f, 0f, 30f, 0f);
        global::Fuse.Controls.Grid.SetRow(temp8, 1);
        global::Fuse.Controls.Grid.SetColumn(temp8, 0);
        temp8.File = new global::Uno.UX.BundleFileSource(import("../../../Assets/Images/password_icon.png"));
        temp9.IsPassword = true;
        temp9.PlaceholderText = "비밀번호";
        temp9.PlaceholderColor = float4(0.6f, 0.6f, 0.6f, 1f);
        temp9.TextColor = float4(1f, 1f, 1f, 1f);
        temp9.CaretColor = float4(1f, 1f, 1f, 1f);
        global::Fuse.Controls.Grid.SetRow(temp9, 1);
        global::Fuse.Controls.Grid.SetColumn(temp9, 1);
        temp10.Color = float4(1f, 1f, 1f, 1f);
        temp10.Height = new Uno.UX.Size(1f, Uno.UX.Unit.Unspecified);
        temp10.Alignment = Fuse.Elements.Alignment.Bottom;
        global::Fuse.Controls.Grid.SetRow(temp10, 1);
        global::Fuse.Controls.Grid.SetColumn(temp10, 0);
        global::Fuse.Controls.Grid.SetColumnSpan(temp10, 2);
        global::Fuse.Controls.Grid.SetRow(temp11, 2);
        temp11.Children.Add(rectNormalScale);
        rectNormalScale.CornerRadius = float4(30f, 30f, 30f, 30f);
        rectNormalScale.Color = float4(1f, 0.2f, 0.4f, 1f);
        rectNormalScale.Width = new Uno.UX.Size(300f, Uno.UX.Unit.Unspecified);
        rectNormalScale.Height = new Uno.UX.Size(60f, Uno.UX.Unit.Unspecified);
        rectNormalScale.Name = __selector0;
        global::Fuse.Gestures.Clicked.AddHandler(rectNormalScale, temp_eb0.OnEvent);
        rectNormalScale.Children.Add(temp12);
        rectNormalScale.Children.Add(temp13);
        rectNormalScale.Bindings.Add(temp_eb0);
        temp12.Value = "로그인";
        temp12.FontSize = 18f;
        temp12.Color = float4(1f, 1f, 1f, 1f);
        temp12.Alignment = Fuse.Elements.Alignment.Center;
        temp13.Animators.Add(temp14);
        temp14.Factor = 0.95f;
        temp14.Duration = 0.08;
        temp14.Easing = Fuse.Animations.Easing.QuadraticOut;
        __g_nametable.This = this;
        __g_nametable.Objects.Add(router);
        __g_nametable.Objects.Add(rectNormalScale);
        __g_nametable.Objects.Add(temp_eb0);
        this.Children.Add(temp1);
        this.Children.Add(temp2);
    }
    static global::Uno.UX.Selector __selector0 = "rectNormalScale";
}
