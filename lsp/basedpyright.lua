return {
	-- Command and arguments to start the server.
	cmd = { "basedpyright" },
	-- Filetypes to automatically attach to.
	filetypes = { "python" },
	settings = {
		basedpyright = {
			analysis = {
				---@type "strict" | "standard" | "basic"
				typeCheckingMode = "strict",
				inlayHints = {
					callArgumentNames = true,
				},
				-- The following settings were not found in the provided schema:
				-- reportMissingImports = true,
				-- reportMissingTypeStubs = true,
				-- If you still believe these should work, you might need to check
				-- for an updated server version or a different configuration method (e.g., pyproject.toml).
			},
			useLibraryCodeForTypes = true,
			-- REMOVE THIS LINE: 'language' is not a supported setting for basedpyright.
			-- language = "zh",
		},
	},
}
