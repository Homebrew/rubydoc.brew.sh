# from https://github.com/lsegal/yard/issues/484#issuecomment-442586899
class IgnoreDirectiveDocstringParser < YARD::DocstringParser
  def parse_content(content)
    return '' if !content || content.empty?
    super(content.sub(/\Atyped:.*/m, ''))
  end
end

YARD::Docstring.default_parser = IgnoreDirectiveDocstringParser
