[Uno.Compiler.UxGenerated]
public partial class EventCard: Fuse.Controls.StackPanel
{
    float _field_ImageHeight;
    [global::Uno.UX.UXOriginSetter("SetImageHeight")]
    public float ImageHeight
    {
        get { return _field_ImageHeight; }
        set { SetImageHeight(value, null); }
    }
    public void SetImageHeight(float value, global::Uno.UX.IPropertyListener origin)
    {
        if (value != _field_ImageHeight)
        {
            _field_ImageHeight = value;
            OnPropertyChanged("ImageHeight", origin);
        }
    }
    readonly Fuse.Controls.Panel layoutTarget;
    global::Uno.UX.Property<string> temp_Value_inst;
    global::Uno.UX.Property<string> temp1_Value_inst;
    global::Uno.UX.Property<Uno.UX.Size> temp2_Height_inst;
    global::Uno.UX.Property<Uno.UX.Size> contentLimitPanel_Height_inst;
    global::Uno.UX.Property<string> temp3_Value_inst;
    global::Uno.UX.Property<string> temp4_Value_inst;
    internal global::Fuse.Controls.Panel contentLimitPanel;
    internal global::Fuse.Controls.DockPanel imageAndContent;
    internal global::Fuse.Controls.Rectangle image;
    static EventCard()
    {
    }
    [global::Uno.UX.UXConstructor]
    public EventCard(
		[global::Uno.UX.UXParameter("layoutTarget")] Fuse.Controls.Panel layoutTarget)
    {
        this.layoutTarget = layoutTarget;
        InitializeUX();
    }
    void InitializeUX()
    {
        var temp5 = new global::Fuse.Reactive.Data("pubDate");
        var temp = new global::Fuse.Controls.Text();
        temp_Value_inst = new exam02_FuseControlsTextControl_Value_Property(temp, __selector0);
        var temp6 = new global::Fuse.Reactive.ToUpper(temp5);
        var temp1 = new global::Fuse.Controls.Text();
        temp1_Value_inst = new exam02_FuseControlsTextControl_Value_Property(temp1, __selector0);
        var temp7 = new global::Fuse.Reactive.Data("title");
        var temp8 = new global::Fuse.Reactive.Constant(this);
        var temp2 = new global::Fuse.Controls.Panel();
        temp2_Height_inst = new exam02_FuseElementsElement_Height_Property(temp2, __selector1);
        var temp9 = new global::Fuse.Reactive.Property(temp8, exam02_accessor_EventCard_ImageHeight.Singleton);
        var temp10 = new global::Fuse.Reactive.Constant(this);
        contentLimitPanel = new global::Fuse.Controls.Panel();
        contentLimitPanel_Height_inst = new exam02_FuseElementsElement_Height_Property(contentLimitPanel, __selector1);
        var temp11 = new global::Fuse.Reactive.Property(temp10, exam02_accessor_EventCard_ImageHeight.Singleton);
        var temp3 = new global::Fuse.Controls.Text();
        temp3_Value_inst = new exam02_FuseControlsTextControl_Value_Property(temp3, __selector0);
        var temp12 = new global::Fuse.Reactive.Data("originallink");
        var temp4 = new global::MutedText();
        temp4_Value_inst = new exam02_FuseControlsTextControl_Value_Property(temp4, __selector0);
        var temp13 = new global::Fuse.Reactive.Data("description");
        imageAndContent = new global::Fuse.Controls.DockPanel();
        var temp14 = new global::Fuse.Controls.Panel();
        var temp15 = new global::Fuse.Controls.StackPanel();
        var temp16 = new global::Fuse.Reactive.DataBinding(temp_Value_inst, temp6, Fuse.Reactive.BindingMode.Default);
        var temp17 = new global::Fuse.Reactive.DataBinding(temp1_Value_inst, temp7, Fuse.Reactive.BindingMode.Default);
        image = new global::Fuse.Controls.Rectangle();
        var temp18 = new global::Fuse.Drawing.SolidColor();
        var temp19 = new global::Fuse.Drawing.LinearGradient();
        var temp20 = new global::Fuse.Drawing.GradientStop();
        var temp21 = new global::Fuse.Drawing.GradientStop();
        var temp22 = new global::Fuse.Reactive.DataBinding(temp2_Height_inst, temp9, Fuse.Reactive.BindingMode.Read);
        var temp23 = new global::Fuse.Reactive.DataBinding(contentLimitPanel_Height_inst, temp11, Fuse.Reactive.BindingMode.Read);
        var temp24 = new global::Fuse.Controls.StackPanel();
        var temp25 = new global::Fuse.Reactive.DataBinding(temp3_Value_inst, temp12, Fuse.Reactive.BindingMode.Default);
        var temp26 = new global::Fuse.Reactive.DataBinding(temp4_Value_inst, temp13, Fuse.Reactive.BindingMode.Default);
        var temp27 = new global::Fuse.Controls.Rectangle();
        var temp28 = new global::Fuse.Controls.Shadow();
        this.ImageHeight = 200f;
        contentLimitPanel.Name = __selector2;
        contentLimitPanel.Children.Add(imageAndContent);
        contentLimitPanel.Bindings.Add(temp23);
        imageAndContent.HitTestMode = Fuse.Elements.HitTestMode.LocalBoundsAndChildren;
        imageAndContent.ClipToBounds = true;
        imageAndContent.Name = __selector3;
        imageAndContent.Children.Add(temp2);
        global::Fuse.Controls.DockPanel.SetDock(temp2, Fuse.Layouts.Dock.Top);
        temp2.Children.Add(temp14);
        temp2.Bindings.Add(temp22);
        temp14.Children.Add(temp15);
        temp14.Children.Add(image);
        temp15.Alignment = Fuse.Elements.Alignment.BottomLeft;
        temp15.Margin = float4(56f, 15f, 30f, 15f);
        temp15.Children.Add(temp);
        temp15.Children.Add(temp1);
        temp.FontSize = 14f;
        temp.Color = float4(1f, 1f, 1f, 0.7333333f);
        temp.Bindings.Add(temp16);
        temp1.TextWrapping = Fuse.Controls.TextWrapping.Wrap;
        temp1.FontSize = 27f;
        temp1.Color = float4(1f, 1f, 1f, 1f);
        temp1.Alignment = Fuse.Elements.Alignment.CenterLeft;
        temp1.Bindings.Add(temp17);
        image.CornerRadius = float4(2f, 2f, 0f, 0f);
        image.Margin = float4(15f, 15f, 15f, 0f);
        image.Layer = Fuse.Layer.Background;
        image.Name = __selector4;
        image.Fills.Add(temp18);
        image.Fills.Add(temp19);
        temp18.Color = float4(0.2666667f, 0.2666667f, 0.2666667f, 1f);
        temp19.Stops.Add(temp20);
        temp19.Stops.Add(temp21);
        temp20.Offset = 0f;
        temp20.Color = float4(0f, 0f, 0f, 0.1f);
        temp21.Offset = 1f;
        temp21.Color = float4(0f, 0f, 0f, 0.92f);
        temp24.ItemSpacing = 10f;
        temp24.Margin = float4(35f, 10f, 35f, 10f);
        temp24.Children.Add(temp3);
        temp24.Children.Add(temp4);
        temp3.Margin = float4(0f, 10f, 0f, 10f);
        temp3.Font = global::MainView.RobotoMedium;
        temp3.Bindings.Add(temp25);
        temp4.Bindings.Add(temp26);
        temp27.CornerRadius = float4(2f, 2f, 2f, 2f);
        temp27.Color = float4(1f, 1f, 1f, 1f);
        temp27.Margin = float4(15f, 15f, 15f, 0f);
        temp27.Layer = Fuse.Layer.Background;
        temp27.Children.Add(temp28);
        temp28.Distance = 2f;
        temp28.Size = 2f;
        temp28.Color = float4(0f, 0f, 0f, 0.2f);
        this.Children.Add(contentLimitPanel);
        this.Children.Add(temp24);
        this.Children.Add(temp27);
    }
    static global::Uno.UX.Selector __selector0 = "Value";
    static global::Uno.UX.Selector __selector1 = "Height";
    static global::Uno.UX.Selector __selector2 = "contentLimitPanel";
    static global::Uno.UX.Selector __selector3 = "imageAndContent";
    static global::Uno.UX.Selector __selector4 = "image";
}
