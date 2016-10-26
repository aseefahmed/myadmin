var HelloWorld = React.createClass({
    render: function() {
        return <div>
            <h1>{this.props.text}</h1>
        </div>
    }
});
ReactDOM.render(<HelloWorld text="My name is aseef ahmed" />, document.getElementById('example'));