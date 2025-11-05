module.exports = {
  content: [
    "./app/views/**/*.{erb,html,html.erb}",
    "./app/helpers/**/*.rb",
    "./app/assets/stylesheets/**/*.css",
    "./app/javascript/**/*.js",
    "./app/javascript/**/*.ts",
    "./app/javascript/**/*.tsx"
  ],
  theme: {
    extend: {
      colors: {
        'amw-ink': '#2D004D',       // deep purple
        'amw-lilac': '#DCC7E1',     // light lilac
        'amw-mist': '#F5F3F7',      // soft background
      },
      boxShadow: {
        'card': '0 2px 6px rgba(0, 0, 0, 0.05)',
      },
    },
  },
  plugins: [],
}
