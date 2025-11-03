import { Application } from '@hotwired/stimulus';
import { registerControllersFrom } from '@hotwired/stimulus'; // Correct import for registering from a context

const application = Application.start();

// Use an import.meta.glob or require.context equivalent to load controllers
// Example using import.meta.glob (modern JS bundlers like Vite)
const controllers = import.meta.globEager('./**/*_controller.js');
registerControllersFrom(application, controllers);

// Or, if you're using Webpack's require.context:
// const controllers = require.context("./", true, /_controller\.js$/)
// application.load(controllers.keys().map(filename => controllers(filename)));
