var React = require('react');
var ReactDOM = require('react-dom');

var HelloWorld = React.createClass({
    render: function(){
        return (
            <div>Today is a nice day. Thank youx from aseef.</div>
        )
    }
});

ReactDOM.render(<HelloWorld />, document.getElementById("testDiv"));