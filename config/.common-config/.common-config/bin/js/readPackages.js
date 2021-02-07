const fs = require('fs');

const fileName = process.argv[2];
const field = process.argv[3];

const file = fs.readFileSync(fileName);

const contain = JSON.parse(file.toString());

switch (field) {
  case 'repository.url':
    console.log(contain.repository ? contain.repository.url : '');
    break;
  case 'repository.branch':
    let branch = contain.repository ? contain.repository.branch : null;
    console.log(branch || 'develop');
    break;
  default:
    break;
}
