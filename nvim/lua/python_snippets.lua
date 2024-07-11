local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local c = ls.choice_node
local i = ls.insert_node


-- Machine Learning Snippets:




ls.add_snippets("python", {
	s("ml",
		{
			t({ "import numpy as np",
				"import pandas as pd",
				"from matplotlib import pyplot as plt",
				"import seaborn as sns", }),
		})
})

ls.add_snippets("python", {
	s("X_train", {
		t({ "X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.33, random_state=42)" }) })
})


-- Sklearn Snippits --

ls.add_snippets("python", {
	s("sklearn",
		{
			t({ "from sklearn.pipeline import Pipeline",
				"from sklearn.model_selection import GridSearchCV",
				"from sklearn.preprocessing import StandardScaler",
				"from sklearn.multioutput import MultiOutputClassifier",
				"from sklearn.ensemble import GradientBoostingClassifier, RandomForestClassifier",
				"from sklearn.metrics import accuracy_score, classification_report",
			})
		})
})

ls.add_snippets("python", {
	s("pipe",
		{
			t('pipe = Pipeline([("scale", StandardScaler()), ("model", '),
			i(1, "name_of_model"),
			t(')])')
		}
	)
})
