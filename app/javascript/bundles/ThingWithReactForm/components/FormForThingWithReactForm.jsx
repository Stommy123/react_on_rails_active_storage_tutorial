import React, { Component } from 'react';
import axios from 'axios';

const token = document.querySelector('meta[name="csrf-token"]').getAttribute('content');

const headers = {
  'X-Requested-With': 'XMLHttpRequest',
  'X-CSRF-TOKEN': token,
  'content-type': 'multipart/form-data'
};

class FormForThingWithReactForm extends Component {
  state = { name: '', image: '' };

  handleNameChange = e => this.setState({ name: e.target.value });

  handleImageChange = e => this.setState({ image: e.target.files[0] });

  handleSubmit = async event => {
    event.preventDefault();
    const formData = new FormData();
    Object.keys(this.state).forEach(state => formData.append(`thing_with_react_form[${state}]`, this.state[state]));
    const { data } = await axios.post('/thing_with_react_forms.json', formData, { headers });
    Turbolinks.visit(`/thing_with_react_forms/${data.id}`);
  };

  render() {
    return (
      <form onSubmit={this.handleSubmit}>
        <div className="field">
          <label htmlFor="name">Name</label>
          <input name="name" type="text" value={this.state.name} onChange={this.handleNameChange} />
        </div>
        <div className="field">
          <label htmlFor="image">Image</label>
          <input name="image" type="file" onChange={this.handleImageChange} />
        </div>
        <button type="submit">Please Work</button>
      </form>
    );
  }
}

export default FormForThingWithReactForm;
