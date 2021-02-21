const colors = require('tailwindcss/colors')

module.exports = {
  purge: [
    './app/**/*.html.erb',
    './app/javascript/**/*.js',
    ],
  darkMode: false, // or 'media' or 'class'
  theme: {
    colors: {
      transparent: 'transparent',
      current: 'currentColor',
      black: colors.black,
      gray: colors.coolGray,
      white: {
        light: '#ffffff',
        DEFAULT: '#f7f8f2ff',
        dark: '#faedcdff',
        darker: '#ecd2ac'
      },
    },
    fontFamily: {
     'display': 'Satisfy',
     'body': 'Open Sans'
    },
    fontSize: {
     'xs': '.75rem',
     'sm': '.875rem',
     'tiny': '.875rem',
      'base': '1rem',
      'lg': '1.5rem',
      'xl': '1.875rem',
      '2xl': '2.25rem',
     '3xl': '3rem',
     '4xl': '4rem',
      '5xl': '5rem',
      '6xl': '6rem',
     '7xl': '8rem',
     '8xl': '9rem',
     '9xl': '10rem',
    },
    letterSpacing: {
      normal: '0',
      wider: '.1em',
      widest: '.25em',
    },
    extend: {
      backgroundImage: theme => ({
       'homepage': "linear-gradient(rgba(0,0,0,0.3), rgba(0,0,0,0.1)), url('https://images.unsplash.com/photo-1563107987-ff4a96bdd594?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=668&q=80')",
       'ricepage': "linear-gradient(rgba(0,0,0,0.7), rgba(0,0,0,0.4)), url('https://images.unsplash.com/photo-1557616053-a9a22d76061e?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=2246&q=80')",
       'wheatpage': "linear-gradient(rgba(0,0,0,0.7), rgba(0,0,0,0.4)), url('https://cdn.pixabay.com/photo/2018/07/08/21/35/wheat-3524861_1280.jpg')",
       'cornpage': "linear-gradient(rgba(0,0,0,0.7), rgba(0,0,0,0.4)), url('https://images.unsplash.com/photo-1602770816583-cc70e98693be?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80')",
       'recipes': "url('https://images.unsplash.com/photo-1514946379532-90281f815889?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1650&q=80')",
       'history': "linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.2)), url('https://images.unsplash.com/photo-1518388141449-351445eb5fb1?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1651&q=80')",
       'resources': "url('https://images.unsplash.com/photo-1466692476868-aef1dfb1e735?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80')",
      })
    },
  },
  variants: {
    extend: {},
  },
  plugins: [],
}

