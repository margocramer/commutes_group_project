var path = require('path');

// Karma configuration
// Generated on Mon Jul 24 2017 10:19:07 GMT-0400 (EDT)

module.exports = function(config) {
  config.set({

    browsers: ['PhantomJS'],

    // base path that will be used to resolve all patterns (eg. files, exclude)
    basePath: '',


    // frameworks to use
    // available frameworks: https://npmjs.org/browse/keyword/karma-adapter
    frameworks: ['jasmine'],


    // list of files / patterns to load in the browser
    files: [
      'test/testHelper.js',
      '../node_modules/babel-polyfill/dist/polyfill.js'
      // 'node-sass'
      // 'app/javascript/react/test/testHelper.js',
      // 'app/javascript/react/test/testHelper.js'
    ],


    // list of files to exclude
    exclude: [
    ],


    // preprocess matching files before serving them to the browser
    // available preprocessors: https://npmjs.org/browse/keyword/karma-preprocessor
    preprocessors: {
      'test/testHelper.js': ['webpack', 'sourcemap']
    },
    webpack: {
      module: {
        loaders: [
                  // use babel-loader to transpile the test and src folders
                  {
                    test: /\.jsx?$/,
                    exclude: /node_modules/,
                    loader: 'babel-loader'
                  },

                  {
                    include: /\.json$/,
                    loader: 'json-loader'
                  }
                ]
      },
      externals: {
         cheerio: 'window',
         'react/addons': 'react',
         'react/lib/ExecutionEnvironment': 'react',
         'react/lib/ReactContext': 'react',
         'react-addons-test-utils': 'react-dom',
       }
    },



    // test results reporter to use
    // possible values: 'dots', 'progress'
    // available reporters: https://npmjs.org/browse/keyword/karma-reporter
    reporters: ['progress'],


    // web server port
    port: 9876,


    // enable / disable colors in the output (reporters and logs)
    colors: true,


    // level of logging
    // possible values: config.LOG_DISABLE || config.LOG_ERROR || config.LOG_WARN || config.LOG_INFO || config.LOG_DEBUG
    logLevel: config.LOG_INFO,


    // enable / disable watching file and executing tests whenever any file changes
    autoWatch: true,


    // start these browsers
    // available browser launchers: https://npmjs.org/browse/keyword/karma-launcher
    browsers: [],


    // Continuous Integration mode
    // if true, Karma captures browsers, runs the tests and exits
    singleRun: false,

    // Concurrency level
    // how many browser should be started simultaneous
    concurrency: Infinity
  })
}
