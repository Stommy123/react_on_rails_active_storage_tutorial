import React, { Component } from 'react'
import axios from 'axios'

const token   = document.querySelector('meta[name="csrf-token"]')
                .getAttribute('content')

const headers = {
                  'X-Requested-With': 'XMLHttpRequest',
                  'X-CSRF-TOKEN':     token,
                  'content-type':     'multipart/form-data'
                }

class FormForThingWithReactForm extends Component {

  state = { name: '', image: '' }

  handleNameChange = event => {
    const name = event.target.value
    this.setState({ name })
  }

  handleImageChange = event => {
    const image = event.target.files[0]
    this.setState({ image })
  }

  handleSubmit = event => {
    event.preventDefault()
    const formData = new FormData()
    formData.append('thing_with_react_form[name]', this.state.name)
    formData.append('thing_with_react_form[image]', this.state.image)

    axios.post('/thing_with_react_forms.json', formData, { headers: headers }
      ).then((response) => {
        Turbolinks.visit(`/thing_with_react_forms/${response.data.id}`)
      })
  }

  render(){
    return(
      <form onSubmit={this.handleSubmit}>
        <div className='field'>
          <label htmlFor='name'>Name</label>
          <input
            name='name'
            type='text'
            value={this.state.name}
            onChange={this.handleNameChange}
          />
        </div>
        <div className='field'>
          <label htmlFor='image'>Image</label>
          <input
            name='image'
            type='file'
            onChange={this.handleImageChange}
          />
        </div>
        <button type="submit">Please Work</button>
      </form>
    )
  }
}

export default FormForThingWithReactForm
