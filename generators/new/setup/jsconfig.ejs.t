---
to: jsconfig.json
---
{
    "compilerOptions": {
        "target": "es2017",
        "allowSyntheticDefaultImports": false,
        "baseUrl": "./",
        "paths": {
            "@modules": ["src/store/modules/*"],
            "@h": ["src/helpers/*"],
            "@/*": ["src/*"]
        }
    },
    "exclude": ["node_modules", "dist", "docs"]
}
