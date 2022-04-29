<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <title>CSS</title>
		<style>
			input[id="cb1"] + label {
				display: inline-block;
				width: 20px;
				height: 20px;
				border: 2px solid #bcbcbc;
				cursor: pointer;
			}
			input[id="cb1"]:checked + label {
				background-color: #666666;
			}
			input[id="cb1"] {
				display: none;
			}
		</style>
  </head>
  <body>
    <h3>Checkbox</h3>
    <input type="checkbox" id="cb1">
    <label for="cb1"></label>
  </body>
</html>