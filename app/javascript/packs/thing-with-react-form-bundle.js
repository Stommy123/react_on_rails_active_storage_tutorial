import ReactOnRails from 'react-on-rails';

import FormForThingWithReactForm from '../bundles/ThingWithReactForm/components/FormForThingWithReactForm';
import ShowThingWithReactForm from '../bundles/ThingWithReactForm/components/ShowThingWithReactForm'

// This is how react_on_rails can see the ThingWithReactForm in the browser.
ReactOnRails.register({
  FormForThingWithReactForm,
  ShowThingWithReactForm
});
