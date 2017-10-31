[Uno.Compiler.UxGenerated]
public partial class SplashPage: Fuse.Controls.Page
{
    readonly Fuse.Navigation.Router router;
    internal global::Fuse.Reactive.EventBinding temp_eb3;
    global::Uno.UX.NameTable __g_nametable;
    static string[] __g_static_nametable = new string[] {
        "router",
        "temp_eb3"
    };
    static SplashPage()
    {
    }
    [global::Uno.UX.UXConstructor]
    public SplashPage(
		[global::Uno.UX.UXParameter("router")] Fuse.Navigation.Router router)
    {
        this.router = router;
        InitializeUX();
    }
    void InitializeUX()
    {
        __g_nametable = new global::Uno.UX.NameTable(null, __g_static_nametable);
        var temp = new global::Fuse.Reactive.Data("gologin");
        var temp1 = new global::Fuse.Controls.DockPanel();
        var temp2 = new global::Fuse.Reactive.JavaScript(__g_nametable);
        var temp3 = new global::Fuse.Controls.Video();
        var temp4 = new global::Fuse.Effects.Blur();
        var temp5 = new global::Fuse.Controls.Grid();
        var temp6 = new global::Fuse.Controls.StackPanel();
        var temp7 = new global::Fuse.Controls.Text();
        var temp8 = new global::Fuse.Controls.Panel();
        var temp9 = new global::Fuse.Controls.Rectangle();
        var temp10 = new global::Fuse.Effects.DropShadow();
        var temp11 = new global::Fuse.Controls.Text();
        var temp12 = new global::Fuse.Gestures.WhilePressed();
        var temp13 = new global::Fuse.Animations.Scale();
        temp_eb3 = new global::Fuse.Reactive.EventBinding(temp);
        temp1.ClipToBounds = true;
        temp1.Children.Add(temp2);
        temp1.Children.Add(temp3);
        temp1.Children.Add(temp5);
        temp2.Code = "\n\t\t\tmodule.exports = {\n\t\t\t\tgologin: function() { router.push(\"loginpage\");}\n\t\t\t}\n\t\t";
        temp2.LineNumber = 5;
        temp2.FileName = "Pages/Splash.ux";
        temp3.IsLooping = true;
        temp3.AutoPlay = true;
        temp3.StretchMode = Fuse.Elements.StretchMode.UniformToFill;
        temp3.Opacity = 0.691f;
        temp3.Layer = Fuse.Layer.Background;
        temp3.File = new global::Uno.UX.BundleFileSource(import("../../../Assets/Movies/sample.mp4"));
        temp3.Children.Add(temp4);
        temp4.Radius = 0f;
        temp5.RowCount = 2;
        temp5.Children.Add(temp6);
        temp5.Children.Add(temp8);
        temp6.Alignment = Fuse.Elements.Alignment.VerticalCenter;
        temp6.Children.Add(temp7);
        temp7.Value = "Splash Page";
        temp7.FontSize = 50f;
        temp7.Color = Fuse.Drawing.Colors.White;
        temp7.Alignment = Fuse.Elements.Alignment.HorizontalCenter;
        temp7.Font = global::MainView.MyFont;
        temp8.Height = new Uno.UX.Size(40f, Uno.UX.Unit.Unspecified);
        temp8.Margin = float4(10f, 10f, 10f, 10f);
        temp8.Padding = float4(10f, 10f, 10f, 10f);
        global::Fuse.Gestures.Clicked.AddHandler(temp8, temp_eb3.OnEvent);
        temp8.Children.Add(temp9);
        temp8.Children.Add(temp11);
        temp8.Children.Add(temp12);
        temp8.Bindings.Add(temp_eb3);
        temp9.CornerRadius = float4(4f, 4f, 4f, 4f);
        temp9.Color = float4(0.07058824f, 0.372549f, 0.3882353f, 1f);
        temp9.Layer = Fuse.Layer.Background;
        temp9.Children.Add(temp10);
        temp10.Angle = 90f;
        temp10.Distance = 1f;
        temp10.Spread = 2f;
        temp10.Color = float4(0f, 0f, 0f, 0.3764706f);
        temp11.Value = "시작하기";
        temp11.FontSize = 16f;
        temp11.Color = Fuse.Drawing.Colors.White;
        temp11.Alignment = Fuse.Elements.Alignment.Center;
        temp12.Animators.Add(temp13);
        temp13.Factor = 0.95f;
        temp13.Duration = 0.08;
        temp13.Easing = Fuse.Animations.Easing.QuadraticOut;
        __g_nametable.This = this;
        __g_nametable.Objects.Add(router);
        __g_nametable.Objects.Add(temp_eb3);
        this.Children.Add(temp1);
    }
}
