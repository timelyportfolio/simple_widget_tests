/*
  name: name of the widget
  type: type of the widget (only 'output' type is supported now)
  factory: function to prepare the HTML element
    el: element to host the widget
    width: width of the element
    height: height of the element

    renderValue: passes dynamic data and settings into the widget.
      x: widget data and settings (passed from R)
    resize: run whenever the window resizes
      width: new width of the element
      height: new height of the element
*/
HTMLWidgets.widget({

  name: 'trianglify',

  type: 'output',

  factory: function(el, width, height) {

    return {
      renderValue: function(x) {

        var x = x ? x : {};
        
        x.width = el.getBoundingClientRect().width;
        x.height = el.getBoundingClientRect().height;
        
        var pattern = Trianglify(x);
        
        el.appendChild(pattern.svg())

      },
      resize: function(width, height) {

      }
    };

  }
});