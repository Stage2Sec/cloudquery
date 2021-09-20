package config

type PolicyWrapper struct {
	Policies []*Policy `hcl:"policy,block"`
}

type Policy struct {
	Name        string         `hcl:"name,label"`
	Description string         `hcl:"description,optional"`
	Config      *Configuration `hcl:"configuration,block"`

	Policies []*Policy `hcl:"policy,block"`
	Queries  []*Query  `hcl:"query,block"`
	Views    []*View   `hcl:"view,block"`
}

type View struct {
	Name        string `hcl:"name,label"`
	Description string `hcl:"description,optional"`

	Query *Query `hcl:"query,block"`
}

type Configuration struct {
	Providers []*PolicyProvider `hcl:"provider,block"`
}

type PolicyProvider struct {
	Type    string `hcl:"type,label"`
	Version string `hcl:"version,optional"`
}

type RiskPayload struct {
	Criticality     string `hcl:"criticality,optional"     json:"criticality,omitempty"`
	AttackSurface   string `hcl:"attack_surface,optional"  json:"attack_surface,omitempty"`
	Summary         string `hcl:"summary,optional"         json:"summary,omitempty"`
	Description     string `hcl:"description,optional"     json:"description,omitempty"`
	Recommendations string `hcl:"recommendations,optional" json:"recommendations,omitempty"`
	References      string `hcl:"references,optional"      json:"references,omitempty"`
	Source          string `hcl:"source,optional"          json:"source,omitempty"`
}

type QueryType string

const (
	ManualQuery    QueryType = "manual"
	AutomaticQuery QueryType = "automatic"
)

type Query struct {
	Name         string       `hcl:"name,label"`
	Description  string       `hcl:"description,optional"`
	ExpectOutput bool         `hcl:"expect_output,optional"`
	Type         QueryType    `hcl:"type,optional"`
	Query        string       `hcl:"query"`
	Risk         *RiskPayload `hcl:"risk,block"`
}
