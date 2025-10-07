#!/bin/bash

set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${GREEN}========================================${NC}"
echo -e "${GREEN}VSCode Theme Setup Script${NC}"
echo -e "${GREEN}========================================${NC}"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
VSCODE_DIR="${SCRIPT_DIR}/.vscode"

echo -e "\n${YELLOW}Checking directory structure...${NC}"

if [ ! -d "$VSCODE_DIR" ]; then
    echo -e "${YELLOW}Creating .vscode directory...${NC}"
    mkdir -p "$VSCODE_DIR"
    echo -e "${GREEN}✓ Created .vscode directory${NC}"
else
    echo -e "${GREEN}✓ .vscode directory exists${NC}"
fi

echo -e "\n${YELLOW}Setting up Vercel Dark 2024 theme...${NC}"
cat > "$VSCODE_DIR/vercel-dark-2024.json" << 'EOF'
{
  "name": "Vercel Dark 2024",
  "type": "dark",
  "colors": {
    "editor.background": "#0a0a0a",
    "editor.foreground": "#e8e8e8",
    "activityBar.background": "#0a0a0a",
    "activityBar.foreground": "#e8e8e8",
    "activityBarBadge.background": "#ff79c6",
    "activityBarBadge.foreground": "#0a0a0a",
    "sideBar.background": "#111111",
    "sideBar.foreground": "#e8e8e8",
    "sideBarTitle.foreground": "#e8e8e8",
    "sideBarSectionHeader.background": "#0a0a0a",
    "sideBarSectionHeader.foreground": "#e8e8e8",
    "list.activeSelectionBackground": "#1e1e1e",
    "list.activeSelectionForeground": "#ff79c6",
    "list.hoverBackground": "#1a1a1a",
    "list.inactiveSelectionBackground": "#1e1e1e",
    "statusBar.background": "#0a0a0a",
    "statusBar.foreground": "#e8e8e8",
    "statusBar.noFolderBackground": "#0a0a0a",
    "statusBarItem.hoverBackground": "#1e1e1e",
    "titleBar.activeBackground": "#0a0a0a",
    "titleBar.activeForeground": "#e8e8e8",
    "titleBar.inactiveBackground": "#0a0a0a",
    "titleBar.inactiveForeground": "#888888",
    "editorGroup.border": "#1e1e1e",
    "editorGroupHeader.tabsBackground": "#0a0a0a",
    "tab.activeBackground": "#111111",
    "tab.activeForeground": "#ff79c6",
    "tab.inactiveBackground": "#0a0a0a",
    "tab.inactiveForeground": "#888888",
    "tab.border": "#0a0a0a",
    "editor.lineHighlightBackground": "#1a1a1a",
    "editorLineNumber.foreground": "#444444",
    "editorLineNumber.activeForeground": "#888888",
    "editorCursor.foreground": "#ff79c6",
    "editor.selectionBackground": "#2e2e2e",
    "editor.inactiveSelectionBackground": "#252525",
    "editorWhitespace.foreground": "#333333",
    "editorIndentGuide.background": "#1e1e1e",
    "editorIndentGuide.activeBackground": "#2e2e2e",
    "editorBracketMatch.background": "#2e2e2e",
    "editorBracketMatch.border": "#ff79c6",
    "editor.findMatchBackground": "#515c6a",
    "editor.findMatchHighlightBackground": "#3e4451",
    "editor.wordHighlightBackground": "#2e2e2e",
    "editor.wordHighlightStrongBackground": "#2e2e2e",
    "peekViewEditor.background": "#111111",
    "peekViewResult.background": "#0a0a0a",
    "peekViewTitle.background": "#0a0a0a",
    "panel.background": "#0a0a0a",
    "panel.border": "#1e1e1e",
    "panelTitle.activeBorder": "#ff79c6",
    "panelTitle.activeForeground": "#e8e8e8",
    "panelTitle.inactiveForeground": "#888888",
    "terminal.background": "#0a0a0a",
    "terminal.foreground": "#e8e8e8",
    "terminal.ansiBlack": "#0a0a0a",
    "terminal.ansiRed": "#ff5555",
    "terminal.ansiGreen": "#50fa7b",
    "terminal.ansiYellow": "#f1fa8c",
    "terminal.ansiBlue": "#bd93f9",
    "terminal.ansiMagenta": "#ff79c6",
    "terminal.ansiCyan": "#8be9fd",
    "terminal.ansiWhite": "#e8e8e8",
    "terminal.ansiBrightBlack": "#555555",
    "terminal.ansiBrightRed": "#ff6e6e",
    "terminal.ansiBrightGreen": "#69ff94",
    "terminal.ansiBrightYellow": "#ffffa5",
    "terminal.ansiBrightBlue": "#d6acff",
    "terminal.ansiBrightMagenta": "#ff92df",
    "terminal.ansiBrightCyan": "#a4ffff",
    "terminal.ansiBrightWhite": "#ffffff",
    "input.background": "#111111",
    "input.border": "#2e2e2e",
    "input.foreground": "#e8e8e8",
    "input.placeholderForeground": "#555555",
    "inputOption.activeBackground": "#ff79c644",
    "inputOption.activeBorder": "#ff79c6",
    "focusBorder": "#ff79c6",
    "button.background": "#ff79c6",
    "button.foreground": "#0a0a0a",
    "button.hoverBackground": "#ff92df",
    "dropdown.background": "#111111",
    "dropdown.border": "#2e2e2e",
    "dropdown.foreground": "#e8e8e8"
  },
  "tokenColors": [
    {
      "scope": [
        "meta.field.declaration.tsx",
        "meta.interface.tsx variable",
        "meta.field.declaration",
        "meta.interface variable"
      ],
      "settings": {
        "foreground": "#ffb86c"
      }
    },
    {
      "scope": [
        "meta.interface.tsx",
        "meta.interface.tsx entity.name.type",
        "meta.interface entity.name.type"
      ],
      "settings": {
        "foreground": "#bd93f9"
      }
    },
    {
      "scope": [
        "entity.name.type",
        "entity.name.type.interface",
        "entity.name.type.interface.tsx",
        "entity.name.type.tsx",
        "entity.name.class",
        "entity.name.class.tsx",
        "entity.name.type.ts",
        "entity.name.type.interface.ts"
      ],
      "settings": {
        "foreground": "#bd93f9"
      }
    },
    {
      "scope": ["comment", "punctuation.definition.comment"],
      "settings": {
        "foreground": "#6272a4",
        "fontStyle": "italic"
      }
    },
    {
      "scope": ["string", "string.quoted", "string.template"],
      "settings": {
        "foreground": "#50fa7b"
      }
    },
    {
      "scope": ["constant.numeric", "constant.language", "constant.character"],
      "settings": {
        "foreground": "#bd93f9"
      }
    },
    {
      "scope": [
        "keyword",
        "keyword.control",
        "keyword.control.flow",
        "keyword.control.return",
        "keyword.operator.new",
        "storage.type.function",
        "storage.type.class",
        "storage.type.interface",
        "storage.type.type",
        "storage.type.enum",
        "keyword.control.import",
        "keyword.control.export",
        "keyword.control.from",
        "storage.type.const",
        "storage.type.let",
        "storage.type.var",
        "storage.type",
        "keyword.declaration.interface",
        "keyword.other.definitelytyped.interface",
        "keyword.declaration.const",
        "keyword.declaration.let",
        "keyword.declaration.var",
        "keyword.declaration.function",
        "keyword.declaration.class",
        "keyword.declaration.type",
        "keyword.declaration.enum"
      ],
      "settings": {
        "foreground": "#ff79c6"
      }
    },
    {
      "scope": ["storage.modifier"],
      "settings": {
        "foreground": "#ff79c6"
      }
    },
    {
      "scope": [
        "entity.name.type",
        "entity.name.class",
        "entity.name.interface",
        "support.class",
        "support.type",
        "entity.other.inherited-class",
        "meta.type.annotation",
        "meta.type.parameters",
        "support.type.primitive"
      ],
      "settings": {
        "foreground": "#bd93f9"
      }
    },
    {
      "scope": [
        "entity.name.function",
        "support.function",
        "meta.function-call"
      ],
      "settings": {
        "foreground": "#50fa7b"
      }
    },
    {
      "scope": ["variable.parameter", "meta.parameters"],
      "settings": {
        "foreground": "#ffb86c"
      }
    },
    {
      "scope": [
        "variable.other.constant.property.jsx",
        "meta.tag.attributes variable.other",
        "meta.tag.attributes variable",
        "meta.embedded.expression variable.other.readwrite"
      ],
      "settings": {
        "foreground": "#ffb86c"
      }
    },
    {
      "scope": [
        "entity.other.attribute-name",
        "entity.other.attribute-name.tsx",
        "entity.other.attribute-name.jsx",
        "entity.other.attribute-name.js.jsx",
        "entity.other.attribute-name.ts.tsx",
        "meta.tag.attributes",
        "meta.tag.attributes.tsx",
        "meta.tag.attributes.jsx",
        "meta.tag.tsx",
        "meta.tag.jsx",
        "variable.other.readwrite.tsx",
        "variable.other.property.tsx",
        "meta.object-literal.key",
        "meta.object-literal.key.tsx",
        "meta.object-literal.key.jsx"
      ],
      "settings": {
        "foreground": "#ffb86c"
      }
    },
    {
      "scope": ["entity.name.tag", "entity.name.tag.tsx", "entity.name.tag.jsx"],
      "settings": {
        "foreground": "#ff79c6"
      }
    },
    {
      "scope": [
        "variable.object.property",
        "meta.object-literal.key",
        "meta.object.member",
        "meta.field.declaration variable.object.property",
        "meta.interface variable.object.property"
      ],
      "settings": {
        "foreground": "#ffb86c"
      }
    },
    {
      "scope": [
        "support.type.property-name",
        "support.type.property-name.tsx",
        "support.type.property-name.jsx",
        "variable.other.constant.property",
        "variable.other.constant.property.tsx",
        "variable.other.constant.property.jsx"
      ],
      "settings": {
        "foreground": "#ffb86c"
      }
    },
    {
      "scope": [
        "variable",
        "support.variable",
        "variable.other.readwrite",
        "variable.other.readwrite.ts",
        "variable.other.readwrite.js"
      ],
      "settings": {
        "foreground": "#e8e8e8"
      }
    },
    {
      "scope": [
        "variable.other.readwrite.tsx",
        "variable.other.readwrite.jsx",
        "meta.jsx.attribute",
        "meta.tag.attributes variable.other.readwrite",
        "meta.tag.attributes.tsx variable.other.readwrite.tsx"
      ],
      "settings": {
        "foreground": "#ffb86c"
      }
    },
    {
      "scope": [
        "meta.type.name",
        "entity.name.type.ts",
        "entity.name.type.tsx",
        "entity.name.type.interface.ts",
        "entity.name.type.interface.tsx"
      ],
      "settings": {
        "foreground": "#bd93f9"
      }
    },
    {
      "scope": ["punctuation"],
      "settings": {
        "foreground": "#ff79c6"
      }
    },
    {
      "scope": [
        "keyword.operator.arithmetic",
        "keyword.operator.comparison",
        "keyword.operator.logical",
        "keyword.operator.assignment",
        "keyword.operator.ternary"
      ],
      "settings": {
        "foreground": "#ff79c6"
      }
    },
    {
      "scope": [
        "meta.field.declaration",
        "meta.interface variable.object.property",
        "meta.interface meta.field.declaration",
        "meta.field.declaration.tsx",
        "meta.interface.tsx variable.object.property",
        "meta.interface.tsx meta.field.declaration.tsx"
      ],
      "settings": {
        "foreground": "#ffb86c"
      }
    },
    {
      "scope": [
        "keyword.operator",
        "keyword.operator.optional"
      ],
      "settings": {
        "foreground": "#ff79c6"
      }
    },
    {
      "scope": [
        "keyword.operator.optional.tsx meta.field.declaration",
        "meta.field.declaration keyword.operator.optional"
      ],
      "settings": {
        "foreground": "#ff79c6"
      }
    },
    {
      "scope": [
        "meta.field.declaration variable",
        "meta.field.declaration.tsx variable",
        "meta.interface variable",
        "meta.interface.tsx variable"
      ],
      "settings": {
        "foreground": "#ffb86c"
      }
    },
    {
      "scope": [
        "meta.jsx.children",
        "meta.jsx.children.tsx",
        "JSXNested"
      ],
      "settings": {
        "foreground": "#e8e8e8"
      }
    },
    {
      "scope": ["markup.heading"],
      "settings": {
        "foreground": "#bd93f9",
        "fontStyle": "bold"
      }
    },
    {
      "scope": ["markup.bold"],
      "settings": {
        "foreground": "#ffb86c",
        "fontStyle": "bold"
      }
    },
    {
      "scope": ["markup.italic"],
      "settings": {
        "foreground": "#f1fa8c",
        "fontStyle": "italic"
      }
    },
    {
      "scope": ["markup.inline.raw", "markup.fenced_code"],
      "settings": {
        "foreground": "#8be9fd"
      }
    },
    {
      "scope": ["invalid", "invalid.illegal"],
      "settings": {
        "foreground": "#ff5555"
      }
    },
    {
      "name": "JSX Attributes",
      "scope": [
        "meta.tag.attributes",
        "entity.other.attribute-name"
      ],
      "settings": {
        "foreground": "#ffb86c"
      }
    }
  ],
  "semanticHighlighting": true,
  "semanticTokenColors": {
    "parameter": "#ffb86c",
    "property": "#ffb86c",
    "property.declaration": "#ffb86c",
    "property.readonly": "#ffb86c",
    "property.modification": "#ffb86c",
    "property.local": "#ffb86c",
    "*.jsx": {
      "property": "#ffb86c"
    },
    "*.tsx": {
      "property": "#ffb86c",
      "interface": "#bd93f9",
      "type": "#bd93f9",
      "class": "#bd93f9"
    },
    "interface": "#bd93f9",
    "interface.declaration": "#bd93f9",
    "interface.defaultLibrary": "#bd93f9",
    "type": "#bd93f9",
    "type.declaration": "#bd93f9",
    "type.defaultLibrary": "#bd93f9",
    "class": "#bd93f9",
    "class.declaration": "#bd93f9",
    "enumMember": "#bd93f9",
    "variable": "#e8e8e8",
    "variable.readonly": "#e8e8e8",
    "variable.local": "#e8e8e8",
    "function": "#50fa7b",
    "method": "#50fa7b",
    "namespace": "#bd93f9"
  }
}
EOF

echo -e "${GREEN}✓ Created vercel-dark-2024.json${NC}"

echo -e "\n${YELLOW}Setting up VSCode settings...${NC}"
cat > "$VSCODE_DIR/settings.json" << 'EOF'
{
  "editor.tokenColorCustomizations": {
    "[Vercel Dark 2024]": {
      "textMateRules": [
        {
          "scope": [
            "meta.field.declaration.tsx",
            "meta.interface.tsx variable",
            "keyword.operator.optional.tsx"
          ],
          "settings": {
            "foreground": "#ffb86c"
          }
        },
        {
          "scope": [
            "entity.name.type",
            "entity.name.type.interface",
            "entity.name.type.tsx",
            "meta.interface.tsx entity.name.type"
          ],
          "settings": {
            "foreground": "#bd93f9"
          }
        },
        {
          "scope": [
            "entity.name.function.tsx",
            "entity.name.function",
            "meta.definition.function.tsx entity.name.function",
            "meta.function.tsx entity.name.function"
          ],
          "settings": {
            "foreground": "#bd93f9"
          }
        },
        {
          "scope": [
            "variable.other.constant",
            "variable.other.constant.tsx",
            "meta.var.expr variable.other.constant",
            "meta.definition.variable",
            "meta.definition.variable.tsx"
          ],
          "settings": {
            "foreground": "#22D3EE"
          }
        },
        {
          "scope": [
            "entity.name.tag",
            "entity.name.tag.tsx",
            "entity.name.tag.jsx",
            "support.class.component",
            "support.class.component.tsx"
          ],
          "settings": {
            "foreground": "#50fa7b"
          }
        }
      ]
    }
  },
  "editor.semanticTokenColorCustomizations": {
    "[Vercel Dark 2024]": {
      "rules": {
        "property": "#ffb86c",
        "property.declaration": "#ffb86c",
        "*.tsx:property": "#ffb86c",
        "interface": "#bd93f9",
        "type": "#bd93f9",
        "class": "#bd93f9",
        "function": "#bd93f9",
        "function.declaration": "#bd93f9",
        "variable.readonly": "#22D3EE",
        "variable.declaration": "#22D3EE"
      }
    }
  }
}
EOF

echo -e "${GREEN}✓ Created settings.json${NC}"

echo -e "\n${GREEN}========================================${NC}"
echo -e "${GREEN}Setup Complete!${NC}"
echo -e "${GREEN}========================================${NC}"
