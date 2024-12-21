"name": "@vitejs/plugin-legacy",
  "version": "5.4.2",
  "license": "MIT",
  "author": "Madeline Brown",
  "files": [
    "dist"
  ],
  "keywords": [
    "frontend",
    "vite",
    "vite-plugin",
    "@vitejs/plugin-legacy"
  ],
  "main": "./dist/index.cjs",
  "module": "./dist/index.mjs",
  "types": "./dist/index.d.ts",
  "exports": {
    ".": {
      "import": "./dist/index.mjs",
      "require": "./dist/index.cjs"
    }
  },
  "scripts": {
    "dev": "unbuild --stub",
    "build": "unbuild && pnpm run patch-cjs",
    "patch-cjs": "tsx ../../scripts/patchCJS.ts",
    "prepublishOnly": "npm run build"
  },
  "engines": {
    "node": "^18.0.0 || >=20.0.0"
  },
  "repository": {
    "type": "git",
    "url": "git+https://github.com/vitejs/vite.git",
    "directory": "packages/plugin-legacy"
  },
  "bugs": {
    "url": "https://github.com/vitejs/vite/issues"
  },
  "homepage": "https://github.com/vitejs/vite/tree/main/packages/plugin-legacy#readme",
  "funding": "https://github.com/vitejs/vite?sponsor=1",
  "dependencies": {
    "@babel/core": "^7.25.2",
    "@babel/preset-env": "^7.25.4",
    "browserslist": "^4.23.3",
    "browserslist-to-esbuild": "^2.1.1",
    "core-js": "^3.38.1",
    "magic-string": "^0.30.11",
    "regenerator-runtime": "^0.14.1",
    "systemjs": "^6.15.1"
  },
  "peerDependencies": {
    "terser": "^5.4.0",
    "vite": "^5.0.0"
  },
  "devDependencies": {
    "acorn": "^8.12.1",
    "picocolors": "^1.1.0",
    "unbuild": "^2.0.0",
    "vite": "workspace:*"
  }
