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
        global::Uno.UX.Property<string> temp_Value_inst;
        static Template()
        {
        }
        public override object New()
        {
            var __self = new global::EventCard(__parent.contentPlaceholder);
            var temp = new global::Fuse.Selection.Selectable();
            temp_Value_inst = new exam02_FuseSelectionSelectable_Value_Property(temp, __selector0);
            var temp1 = new global::Fuse.Reactive.Data("id");
            var temp2 = new global::Fuse.Reactive.DataBinding(temp_Value_inst, temp1, Fuse.Reactive.BindingMode.Default);
            temp.Bindings.Add(temp2);
            __self.Children.Add(temp);
            return __self;
        }
        static global::Uno.UX.Selector __selector0 = "Value";
    }
    global::Uno.UX.Property<object> temp_Items_inst;
    internal global::Fuse.Controls.Panel contentPlaceholder;
    internal global::Fuse.Controls.ScrollView mainScrollView;
    global::Uno.UX.NameTable __g_nametable;
    static string[] __g_static_nametable = new string[] {
        "router",
        "contentPlaceholder",
        "mainScrollView"
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
        var temp = new global::Fuse.Reactive.Each();
        temp_Items_inst = new exam02_FuseReactiveEach_Items_Property(temp, __selector0);
        var temp1 = new global::Fuse.Reactive.Data("events");
        contentPlaceholder = new global::Fuse.Controls.Panel();
        var temp2 = new global::Fuse.Reactive.JavaScript(__g_nametable);
        var temp3 = new global::Fuse.Controls.DockPanel();
        mainScrollView = new global::Fuse.Controls.ScrollView();
        var temp4 = new global::Fuse.Controls.StackPanel();
        var temp5 = new global::Fuse.Selection.Selection();
        var temp6 = new Template(this, this);
        var temp7 = new global::Fuse.Reactive.DataBinding(temp_Items_inst, temp1, Fuse.Reactive.BindingMode.Default);
        var temp8 = new global::Fuse.Controls.BottomBarBackground();
        contentPlaceholder.Name = __selector1;
        temp2.Code = "\n\t\tmodule.exports = {\n\t\t\tgomain: function() { router.goBack();},\n\t\t\tevents: events,\n\t\t}\n\t\tvar Observable = require(\"FuseJS/Observable\");\n\t\tvar ROOT_URL = \"https://openapi.naver.com/v1/search/news.json?query=\";\n\t\t\n\t\t\n\t\tvar events = Observable();\n\t\tload();\n\t\t//console.log(JSON.stringify(load()));\n\n\t\tfunction load(){\n\t\t\tvar status = 0;\n\t\t\tvar response_ok = false;\n\n\t\t\tvar url = encodeURI(ROOT_URL + \"주식\");\n\t\t\tfetch(url, {\n\t\t\t    method: 'GET',\n\t\t\t    headers: {\n\t\t\t\t\"X-Naver-Client-Id\": \"RYtNojGC2gQG0EW42G6z\",\n\t\t\t\t\"X-Naver-Client-Secret\": \"mEXxVBRnLe\"} \n\t\t\t     \n\t\t\t}).then(function(response) {\n\t\t\t    status = response.status;  // Get the HTTP status code\n\t\t\t    response_ok = response.ok; // Is response.status in the 200-range?\n\t\t\t    \n\t\t\t    return response.json();    // This returns a promise\n\t\t\t}).then(function(responseObject) {\n\t\t\t\t \n\t\t\t\t//console.log(JSON.stringify(responseObject.items[0]));\n\t\t\t\tevents = Observable(responseObject.items); \n\t\t\t    // Do something with the result\n\t\t\t}).catch(function(err) {\n\t\t\t\t\n\t\t\t    // An error occurred somewhere in the Promise chain\n\t\t\t});\n\n\t \n\t\t\t}\n\t\t\n\t";
        temp2.LineNumber = 8;
        temp2.FileName = "Pages/Sub.ux";
        temp3.Children.Add(mainScrollView);
        temp3.Children.Add(temp8);
        mainScrollView.LayoutMode = Fuse.Controls.ScrollViewLayoutMode.PreserveVisual;
        mainScrollView.ClipToBounds = false;
        mainScrollView.Name = __selector2;
        mainScrollView.Children.Add(temp4);
        temp4.Margin = float4(0f, 0f, 0f, 15f);
        temp4.Children.Add(temp5);
        temp4.Children.Add(temp);
        temp5.MinCount = 0;
        temp5.MaxCount = 1;
        temp.Templates.Add(temp6);
        temp.Bindings.Add(temp7);
        global::Fuse.Controls.DockPanel.SetDock(temp8, Fuse.Layouts.Dock.Bottom);
        __g_nametable.This = this;
        __g_nametable.Objects.Add(router);
        __g_nametable.Objects.Add(contentPlaceholder);
        __g_nametable.Objects.Add(mainScrollView);
        this.Children.Add(contentPlaceholder);
        this.Children.Add(temp2);
        this.Children.Add(temp3);
    }
    static global::Uno.UX.Selector __selector0 = "Items";
    static global::Uno.UX.Selector __selector1 = "contentPlaceholder";
    static global::Uno.UX.Selector __selector2 = "mainScrollView";
}
