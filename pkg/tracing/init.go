package tracing

import (
	"io"
	"log"

	opentracing "github.com/opentracing/opentracing-go"
	jaeger "github.com/uber/jaeger-client-go"
	config "github.com/uber/jaeger-client-go/config"
)

// Init retuens an instance of jaeger tracer that samples 100% oftraces andlogs all spans to stdout
func Init(service string) (opentracing.Tracer, io.Closer) {
	cfg := &config.Configuration{
		Sampler: &config.SamplerConfig{
			Type:  "const",
			Param: 1,
		},
		Reporter: &config.ReporterConfig{
			LogSpans: true,
		},
	}
	tracer, closer, err := cfg.New(service, config.Logger(jaeger.StdLogger))

	if err != nil {
		log.Fatalf("ERROR: cannotinit Jaeger: %v", err)
	}

	return tracer, closer

}
