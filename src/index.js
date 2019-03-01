'use strict'

process.env['PATH'] += ':/opt'

exports.handler = (event) => {
  return {
    statusCode: 200
  }
}
