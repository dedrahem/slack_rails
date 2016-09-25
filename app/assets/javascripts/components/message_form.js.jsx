var MessageForm = React.createClass({
  submitMessage: function() {
    var value = ReactDOM.findDOMNode(this.refs.message).value
    this.props.onMessageSubmit(value)
  },

  render: function() {
    return(
      <div className="message-form">
        <input  type="text" ref="message"/>
        <div className="dogbox">
        <a id="bigdog" href="#" onClick={ this.submitMessage }>Add Message</a>
        </div>
      </div>
    );
  }
});
