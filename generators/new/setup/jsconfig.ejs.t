---
to: jsconfig.json
---
{
    "compilerOptions": {
        "target": "es2017",
        "allowSyntheticDefaultImports": false,
        "baseUrl": "./",
        "paths": {
            "@/components": ["src/components/*"],
            "@/containers": ["src/containers/*"],
            "@/composables": ["src/composables/*"],
            "@/helpers": ["src/helpers/*"],
            "@/*": ["src/*"],
        }
    },
    "exclude": ["node_modules", "dist", "docs"]
}
