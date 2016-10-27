var BrandsListComponent = React.createClass({
    getInitialState: function(){
        return {
            data: this.props.data
        }
    },
    render: function(){
        var list = this.state.data.map(function(item, index){
            return (
                    <tr key={index}>
                        <td></td>
                        <td></td>
                        <td>{item.brand_name}</td>
                        <td className="text-center">
                          <a className="btn btn-primary"><i className="fa fa-eye"></i></a>
                          <a className="btn btn-warning" href=""><i className="fa fa-edit"></i></a>
                          <a className="btn btn-danger"><i className="fa fa-times"></i></a>
                        </td>
                    </tr>
            )
        }.bind(this));

        return (
            <div>
                <table className="table table-striped table-bordered table-hover">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>Image</th>
                        <th>Brand Name</th>
                        <th className="text-center">Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    {list}
                    </tbody>
                </table>
            </div>
        )
    }
});

ReactDOM.render(<BrandsListComponent />, document.getElementById('listingDiv'));