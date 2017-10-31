[Uno.Compiler.UxGenerated]
public partial class MainPage: Fuse.Controls.Page
{
    readonly Fuse.Navigation.Router router;
    internal global::Fuse.Reactive.EventBinding temp_eb1;
    internal global::Fuse.Reactive.EventBinding temp_eb2;
    global::Uno.UX.NameTable __g_nametable;
    static string[] __g_static_nametable = new string[] {
        "router",
        "temp_eb1",
        "temp_eb2"
    };
    static MainPage()
    {
    }
    [global::Uno.UX.UXConstructor]
    public MainPage(
		[global::Uno.UX.UXParameter("router")] Fuse.Navigation.Router router)
    {
        this.router = router;
        InitializeUX();
    }
    void InitializeUX()
    {
        __g_nametable = new global::Uno.UX.NameTable(null, __g_static_nametable);
        var temp = new global::Fuse.Reactive.Data("gologin");
        var temp1 = new global::Fuse.Reactive.Data("gosub");
        var temp2 = new global::Fuse.Reactive.JavaScript(__g_nametable);
        var temp3 = new global::Fuse.Controls.DockPanel();
        var temp4 = new global::Fuse.Controls.Grid();
        var temp5 = new global::Fuse.Controls.StackPanel();
        var temp6 = new global::Fuse.Controls.Text();
        var temp7 = new global::Fuse.Controls.StackPanel();
        var temp8 = new global::Fuse.Controls.Panel();
        var temp9 = new global::Fuse.Controls.Rectangle();
        var temp10 = new global::Fuse.Effects.DropShadow();
        var temp11 = new global::Fuse.Controls.Text();
        var temp12 = new global::Fuse.Gestures.WhilePressed();
        var temp13 = new global::Fuse.Animations.Scale();
        temp_eb1 = new global::Fuse.Reactive.EventBinding(temp);
        var temp14 = new global::Fuse.Controls.Panel();
        var temp15 = new global::Fuse.Controls.Rectangle();
        var temp16 = new global::Fuse.Effects.DropShadow();
        var temp17 = new global::Fuse.Controls.Text();
        var temp18 = new global::Fuse.Gestures.WhilePressed();
        var temp19 = new global::Fuse.Animations.Scale();
        temp_eb2 = new global::Fuse.Reactive.EventBinding(temp1);
        temp2.Code = "\n\t\tmodule.exports = {\n\t\t\tgologin: function() { router.push(\"loginpage\");},\n\t\t\tgosub: function() { router.push(\"subpage\");}\n\t\t}\n\t";
        temp2.LineNumber = 4;
        temp2.FileName = "Pages/Main.ux";
        temp3.Children.Add(temp4);
        temp4.RowCount = 2;
        temp4.Children.Add(temp5);
        temp4.Children.Add(temp7);
        temp5.Alignment = Fuse.Elements.Alignment.VerticalCenter;
        temp5.Children.Add(temp6);
        temp6.Value = "Main Page";
        temp6.FontSize = 50f;
        temp6.Color = Fuse.Drawing.Colors.White;
        temp6.Alignment = Fuse.Elements.Alignment.HorizontalCenter;
        temp6.Font = global::MainView.MyFont;
        temp7.Orientation = Fuse.Layouts.Orientation.Horizontal;
        temp7.ContentAlignment = Fuse.Elements.Alignment.Center;
        temp7.Children.Add(temp8);
        temp7.Children.Add(temp14);
        temp8.Height = new Uno.UX.Size(40f, Uno.UX.Unit.Unspecified);
        temp8.Margin = float4(10f, 10f, 10f, 10f);
        temp8.Padding = float4(10f, 10f, 10f, 10f);
        global::Fuse.Gestures.Clicked.AddHandler(temp8, temp_eb1.OnEvent);
        temp8.Children.Add(temp9);
        temp8.Children.Add(temp11);
        temp8.Children.Add(temp12);
        temp8.Bindings.Add(temp_eb1);
        temp9.CornerRadius = float4(4f, 4f, 4f, 4f);
        temp9.Color = float4(0.07058824f, 0.372549f, 0.3882353f, 1f);
        temp9.Layer = Fuse.Layer.Background;
        temp9.Children.Add(temp10);
        temp10.Angle = 90f;
        temp10.Distance = 1f;
        temp10.Spread = 2f;
        temp10.Color = float4(0f, 0f, 0f, 0.3764706f);
        temp11.Value = "로그아웃";
        temp11.FontSize = 16f;
        temp11.Color = Fuse.Drawing.Colors.White;
        temp11.Alignment = Fuse.Elements.Alignment.Center;
        temp12.Animators.Add(temp13);
        temp13.Factor = 0.95f;
        temp13.Duration = 0.08;
        temp13.Easing = Fuse.Animations.Easing.QuadraticOut;
        temp14.Height = new Uno.UX.Size(40f, Uno.UX.Unit.Unspecified);
        temp14.Margin = float4(10f, 10f, 10f, 10f);
        temp14.Padding = float4(10f, 10f, 10f, 10f);
        global::Fuse.Gestures.Clicked.AddHandler(temp14, temp_eb2.OnEvent);
        temp14.Children.Add(temp15);
        temp14.Children.Add(temp17);
        temp14.Children.Add(temp18);
        temp14.Bindings.Add(temp_eb2);
        temp15.CornerRadius = float4(4f, 4f, 4f, 4f);
        temp15.Color = float4(0.07058824f, 0.372549f, 0.3882353f, 1f);
        temp15.Layer = Fuse.Layer.Background;
        temp15.Children.Add(temp16);
        temp16.Angle = 90f;
        temp16.Distance = 1f;
        temp16.Spread = 2f;
        temp16.Color = float4(0f, 0f, 0f, 0.3764706f);
        temp17.Value = "Go Subpage";
        temp17.FontSize = 16f;
        temp17.Color = Fuse.Drawing.Colors.White;
        temp17.Alignment = Fuse.Elements.Alignment.Center;
        temp18.Animators.Add(temp19);
        temp19.Factor = 0.95f;
        temp19.Duration = 0.08;
        temp19.Easing = Fuse.Animations.Easing.QuadraticOut;
        __g_nametable.This = this;
        __g_nametable.Objects.Add(router);
        __g_nametable.Objects.Add(temp_eb1);
        __g_nametable.Objects.Add(temp_eb2);
        this.Children.Add(temp2);
        this.Children.Add(temp3);
    }
}
