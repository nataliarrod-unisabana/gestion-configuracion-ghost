module.exports = {
  extends: ['@commitlint/config-conventional'],
  parserPreset: {
    parserOpts: {
      issuePrefixes: ['#'],
    },
  },
  rules: {
    'type-enum': [
      2,
      'always',
      ['feat', 'fix', 'docs', 'ci', 'build', 'test', 'refactor', 'chore'],
    ],
    'scope-enum': [
      2,
      'always',
      ['casper', 'source', 'config', 'docs', 'repo'],
    ],
    'subject-min-length': [2, 'always', 10],
    'references-empty': [2, 'never'],
  },
};