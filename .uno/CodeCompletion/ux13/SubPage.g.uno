[Uno.Compiler.UxGenerated]
public partial class SubPage: Fuse.Controls.Page
{
    readonly Fuse.Navigation.Router router;
    [Uno.Compiler.UxGenerated]
    public partial class Template: Uno.UX.Template
    {
        [Uno.WeakReference] internal readonly SubPage __parent;
        [Uno.WeakReference] internal readonly SubPage __parentInstance;
        public Template(SubPage parent, SubPage parentInstance): base(null, false)
        {
            __parent = parent;
            __parentInstance = parentInstance;
        }
        static Template()
        {
        }
        public override object New()
        {
            var __self = new global::EventCard(__parent.contentPlaceholder);
            return __self;
        }
    }
    global::Uno.UX.Property<string> SearchText_Value_inst;
    global::Uno.UX.Property<object> temp_Items_inst;
    internal global::Fuse.Controls.TextInput SearchText;
    internal global::Fuse.Reactive.EventBinding temp_eb4;
    internal global::Fuse.Controls.ScrollView mainScrollView;
    internal global::Fuse.Controls.Panel contentPlaceholder;
    global::Uno.UX.NameTable __g_nametable;
    static string[] __g_static_nametable = new string[] {
        "SearchText",
        "temp_eb4",
        "mainScrollView",
        "router",
        "contentPlaceholder"
    };
    static SubPage()
    {
    }
    [global::Uno.UX.UXConstructor]
    public SubPage(
		[global::Uno.UX.UXParameter("router")] Fuse.Navigation.Router router)
    {
        this.router = router;
        InitializeUX();
    }
    void InitializeUX()
    {
        __g_nametable = new global::Uno.UX.NameTable(null, __g_static_nametable);
        SearchText = new global::Fuse.Controls.TextInput();
        SearchText_Value_inst = new exam02_FuseControlsTextInputControl_Value_Property(SearchText, __selector0);
        var temp1 = new global::Fuse.Reactive.Data("SearchTextJS");
        var temp2 = new global::Fuse.Reactive.Data("onValueChanged");
        var temp = new global::Fuse.Reactive.Each();
        temp_Items_inst = new exam02_FuseReactiveEach_Items_Property(temp, __selector1);
        var temp3 = new global::Fuse.Reactive.Data("eventsValue");
        var temp4 = new global::Fuse.Reactive.JavaScript(__g_nametable);
        var temp5 = new global::Fuse.Controls.StackPanel();
        var temp6 = new global::Fuse.Controls.Rectangle();
        var temp7 = new global::Fuse.Drawing.Stroke();
        var temp8 = new global::Fuse.Drawing.StaticSolidColor(float4(0.7333333f, 0.7333333f, 0.7333333f, 1f));
        var temp9 = new global::Fuse.Drawing.SolidColor();
        var temp10 = new global::Fuse.Controls.Shadow();
        var temp11 = new global::Fuse.Reactive.DataBinding(SearchText_Value_inst, temp1, Fuse.Reactive.BindingMode.Default);
        temp_eb4 = new global::Fuse.Reactive.EventBinding(temp2);
        var temp12 = new global::Fuse.Controls.DockPanel();
        mainScrollView = new global::Fuse.Controls.ScrollView();
        var temp13 = new global::Fuse.Controls.StackPanel();
        var temp14 = new global::Fuse.Selection.Selection();
        var temp15 = new Template(this, this);
        var temp16 = new global::Fuse.Reactive.DataBinding(temp_Items_inst, temp3, Fuse.Reactive.BindingMode.Default);
        var temp17 = new global::Fuse.Controls.BottomBarBackground();
        contentPlaceholder = new global::Fuse.Controls.Panel();
        var temp18 = new global::Fuse.Reactive.JavaScript(__g_nametable);
        temp4.Code = "\n\t\tvar Observable = require(\"FuseJS/Observable\");\t\t\n\t\tvar ROOT_URL = \"https://openapi.naver.com/v1/search/news.json?query=\";\n\n\n\t\tload(\"주식\");\n\t\t//console.log(JSON.stringify(load()));\n\t\tvar e = Observable();\n\t\tvar SearchTextJS = Observable(); \n\t\tfunction onValueChanged()\n\t\t{\n\t\t\t\n\t\t\tload(SearchTextJS.value);\n\n\t\t}\n\n\t\tfunction load(keyword){\n\t\t\t\n\t\t\tvar status = 0;\n\t\t\tvar response_ok = false;\n\t\t\t\n\n\t\t\t\n\t\t\tvar url = encodeURI(ROOT_URL + keyword);\n\t\t\tconsole.log(url);\n\t\t\tfetch(url, {\n\t\t\t    method: 'GET',\n\t\t\t    headers: {\n\t\t\t\t\"X-Naver-Client-Id\": \"RYtNojGC2gQG0EW42G6z\",\n\t\t\t\t\"X-Naver-Client-Secret\": \"mEXxVBRnLe\"} \n\t\t\t     \n\t\t\t}).then(function(response) {\n\t\t\t    status = response.status;  // Get the HTTP status code\n\t\t\t    response_ok = response.ok; // Is response.status in the 200-range?\n\t\t\t    \n\t\t\t    return response.json();    // This returns a promise\n\t\t\t}).then(function(responseObject) {\n\t\t\t\t//console.log(e.value);\n\t\t\t\te.clear();\n\t\t\t\tfor(var i=0; i<responseObject.items.length;i++) {\n\t\t\t\t\te.add(responseObject.items[i]); \t\n\t\t\t\t}\n\t\t\t\t//e.remove(1);\n\t\t\t\tconsole.log(JSON.stringify(e.value)); \n\n\t\t\t\t\n\t\t\t    // Do something with the result\n\t\t\t}).catch(function(err) {\n\t\t\t\t\n\t\t\t    // An error occurred somewhere in the Promise chain\n\t\t\t});\n \n\t  \n\t\t\t}\n\t\t\t\n\t\tmodule.exports = {\n\t\t\tgomain: function() { router.goBack();},\n\t\t\teventsValue: e,\n\t\t\tonValueChanged:onValueChanged,\n\t\t\tSearchTextJS:SearchTextJS\n\n\t\t\t\n\t\t}\n\t";
        temp4.LineNumber = 2;
        temp4.FileName = "Pages/Sub.ux";
        temp5.Children.Add(SearchText);
        temp5.Children.Add(temp12);
        SearchText.PlaceholderText = "검색키워드";
        SearchText.PlaceholderColor = float4(0.6f, 0.6f, 0.6f, 1f);
        SearchText.TextColor = float4(1f, 1f, 1f, 1f);
        SearchText.InputHint = Fuse.Controls.TextInputHint.Email;
        SearchText.CaretColor = float4(1f, 1f, 1f, 1f);
        SearchText.Height = new Uno.UX.Size(30f, Uno.UX.Unit.Unspecified);
        SearchText.Name = __selector2;
        global::Fuse.Controls.Grid.SetRow(SearchText, 0);
        global::Fuse.Controls.Grid.SetColumn(SearchText, 1);
        SearchText.ValueChanged += temp_eb4.OnEvent;
        SearchText.Background = temp9;
        SearchText.Children.Add(temp6);
        SearchText.Children.Add(temp10);
        SearchText.Bindings.Add(temp11);
        SearchText.Bindings.Add(temp_eb4);
        temp6.Layer = Fuse.Layer.Background;
        temp6.Strokes.Add(temp7);
        temp7.Width = 2f;
        temp7.Brush = temp8;
        temp9.Color = float4(0.003921569f, 0.003921569f, 0.003921569f, 1f);
        temp10.Angle = 46f;
        temp10.Distance = 10f;
        temp10.Size = 5f;
        temp12.Height = new Uno.UX.Size(500f, Uno.UX.Unit.Unspecified);
        temp12.Children.Add(mainScrollView);
        temp12.Children.Add(temp17);
        mainScrollView.LayoutMode = Fuse.Controls.ScrollViewLayoutMode.PreserveVisual;
        mainScrollView.ClipToBounds = false;
        mainScrollView.Name = __selector3;
        mainScrollView.Children.Add(temp13);
        temp13.Margin = float4(0f, 0f, 0f, 15f);
        temp13.Children.Add(temp14);
        temp13.Children.Add(temp);
        temp14.MinCount = 0;
        temp14.MaxCount = 1;
        temp.Templates.Add(temp15);
        temp.Bindings.Add(temp16);
        global::Fuse.Controls.DockPanel.SetDock(temp17, Fuse.Layouts.Dock.Bottom);
        contentPlaceholder.Name = __selector4;
        temp18.LineNumber = 98;
        temp18.FileName = "Pages/Sub.ux";
        temp18.File = new global::Uno.UX.BundleFileSource(import("../../../Pages/data.js"));
        __g_nametable.This = this;
        __g_nametable.Objects.Add(SearchText);
        __g_nametable.Objects.Add(temp_eb4);
        __g_nametable.Objects.Add(mainScrollView);
        __g_nametable.Objects.Add(router);
        __g_nametable.Objects.Add(contentPlaceholder);
        this.Children.Add(temp4);
        this.Children.Add(temp5);
        this.Children.Add(contentPlaceholder);
        this.Children.Add(temp18);
    }
    static global::Uno.UX.Selector __selector0 = "Value";
    static global::Uno.UX.Selector __selector1 = "Items";
    static global::Uno.UX.Selector __selector2 = "SearchText";
    static global::Uno.UX.Selector __selector3 = "mainScrollView";
    static global::Uno.UX.Selector __selector4 = "contentPlaceholder";
}
